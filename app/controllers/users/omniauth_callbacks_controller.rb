class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    @user = User.from_omniauth(request.env["omniauth.auth"])
    if @user.instance_of?(User)
      sign_in @user
      redirect_to courses_path
    else
      redirect_to root_path, alert: I18n.t('flashes.errors.already_registred', provider: @user[:provider].humanize)
    end
  end

  def twitter
    @user = User.from_omniauth(request.env["omniauth.auth"])
    if @user.instance_of?(User)
      sign_in @user
      redirect_to courses_path
    else
      redirect_to root_path, alert: I18n.t('flashes.errors.already_registred', provider: @user[:provider].humanize)
    end
  end

  def google_oauth2
    @user = User.from_omniauth(request.env["omniauth.auth"])
    if @user.instance_of?(User)
      sign_in @user
      redirect_to courses_path
    else
      redirect_to root_path, alert: I18n.t('flashes.errors.already_registred', provider: @user[:provider].humanize)
    end
  end

  def github
    @user = User.from_omniauth(request.env["omniauth.auth"])
    if @user.instance_of?(User)
      return sign_in_and_redirect(@user, scope: :user) if @user.confirmed?
      redirect_to root_path, notice: I18n.t('flashes.success.wait_for_approve')
    else
      redirect_to root_path, alert: I18n.t('flashes.errors.already_registred', provider: @user[:provider].humanize)
    end
  end
end
