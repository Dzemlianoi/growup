class Users::OmniauthCallbacksController < Devise::OmniauthCallbacksController
  def facebook
    @user = User.from_omniauth(request.env["omniauth.auth"])
    if @user.persisted? && @user.confirmed?
      redirect_to courses_path
    else
      sign_in @user
      redirect_to home_path
    end
  end

  def failure
    redirect_to root_path
  end
end
