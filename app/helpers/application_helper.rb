module ApplicationHelper
  def main_logo_link
    @current_user ? courses_path : root_path
  end
end
