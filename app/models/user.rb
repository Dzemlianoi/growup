class User < ApplicationRecord
  devise :database_authenticatable,  :rememberable, :trackable, :validatable, :omniauthable, :confirmable,
   omniauth_providers: %i(facebook github twitter google_oauth2)

  def self.from_omniauth(auth)
    @auth = auth
    base_params = { provider: @auth.provider, uid: @auth.uid }
    return find_by(base_params) if exists?(base_params)
    return already_used_provider if registred_with_another_provider
    create(base_params.merge(additional_params))
  end

  private

  def self.additional_params
    { email: @auth.info.email, password: Devise.friendly_token[0,20] }
  end

  def self.already_used_provider
    { provider: find_by(email: @auth.info.email).provider }
  end

  def self.registred_with_another_provider
    where(email: @auth.info.email).where.not(provider: @auth.provider).present?
  end

  def email_required?
    false
  end
end
