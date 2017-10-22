module ApplicationHelper
  def right_url_for_user(avatar)
    avatar&.bigger&.url || asset_path('defaults/user.png')
  end
end
