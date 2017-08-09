class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource_or_scope)
    courses_path
  end

  def access_denied(exception)
    redirect_to root_path, alert: exception.message
  end
end
