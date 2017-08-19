module CoursesHelper
  def course_html
    ERB.new(@course.text).result(self.instance_eval { binding }).html_safe
  end
end
