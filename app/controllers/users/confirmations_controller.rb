class Users::ConfirmationsController < Devise::ConfirmationsController
  def create
    binding.pry
    respond_with({}, location: after_resending_confirmation_instructions_path_for)
  end

  protected

  def after_resending_confirmation_instructions_path_for
    courses_path
  end
end
