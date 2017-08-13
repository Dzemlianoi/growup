class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  ALIAS_METHODS = %w[github facebook google_oauth2 twitter].freeze

  def action_missing(action)
    raise ActionController::RoutingError unless ALIAS_METHODS.include?(action)
    @user = User.from_omniauth(request.env['omniauth.auth'])
    if @user.instance_of?(User)
      return sign_in_and_redirect(@user, scope: :user) if @user.confirmed?
      redirect_to root_path(success: 1), notice: I18n.t('flashes.success.wait_for_approve')
    else
      redirect_to root_path, alert: I18n.t('flashes.errors.already_registred', provider: @user[:provider].humanize)
    end
  end
end
