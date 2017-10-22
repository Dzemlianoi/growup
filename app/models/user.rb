class User < ApplicationRecord
  belongs_to :group

  scope :without_group, -> { where(group: nil) }

  devise :database_authenticatable, :rememberable, :trackable, :validatable, :omniauthable, :confirmable,
         omniauth_providers: %i[facebook github twitter google_oauth2]

  mount_uploader :avatar, AvatarUploader

  def email_required?
    false
  end

  class << self
    def from_omniauth(auth)
      @auth = auth
      return refresh_user if exists?(base_params)
      return already_used_provider if registred_with_another_provider
      create(base_params.merge(additional_params))
    end

    private

    def base_params
      { provider: @auth.provider, uid: @auth.uid }
    end

    def refresh_user
      @user = find_by(base_params)
      @user.update(refreshable_params)
      @user
    end

    def refreshable_params
      params = {}
      params[:name] = @auth.info.name unless @auth.info.name == @user.name
      params[:remote_avatar_url] = @auth.info.image if @user.avatar.nil?
      params
    end

    def additional_params
      {
        email: @auth.info.email,
        password: Devise.friendly_token[0, 20],
        name: @auth.info.name,
        remote_avatar_url: @auth.info.image
      }
    end

    def already_used_provider
      { provider: find_by(email: @auth.info.email).provider }
    end

    def registred_with_another_provider
      where(email: @auth.info.email).where.not(provider: @auth.provider).present?
    end
  end
end
