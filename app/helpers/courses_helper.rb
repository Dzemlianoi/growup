module CoursesHelper
  def course_html
    ERB.new(@course.text).result(instance_eval { binding }).html_safe
  end

  def course_page?
    params[:controller] == 'courses' && params[:action] == 'show'
  end
end
