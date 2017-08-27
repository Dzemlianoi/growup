class CoursesController < ApplicationController
  load_and_authorize_resource find_by: :slug

  def index
    @courses = @courses.by_order
  end

  def show; end
end
