ActiveAdmin.setup do |config|
  config.site_title = 'Growup Courses'
  config.authorization_adapter = ActiveAdmin::CanCanAdapter
  config.authentication_method = :authenticate_admin!
  config.current_user_method = :current_user
  config.logout_link_path = :destroy_user_session_path
  config.batch_actions = true
  config.localize_format = :long
  config.comments = false
end
