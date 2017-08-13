class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to main_app.root_url, alert: exception.message
  end

  def authenticate_admin!
    raise CanCan::AccessDenied unless current_user.admin?
  end

  def after_sign_in_path_for(_resource_or_scope)
    courses_path
  end
end
