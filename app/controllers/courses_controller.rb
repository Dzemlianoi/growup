class CoursesController < ApplicationController
  load_and_authorize_resource

  def index
    @courses = @courses.active.by_order
  end
  
  def show; end
end
