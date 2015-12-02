class CoursesController < ApplicationController

  def index
    render "index"
    @courses = Course.all
    @course = Course.new
  end

  def create
    Course.create(course_params)
    redirect_to "courses"
  end

private
  def course_params
    params.require(:course).permit(:name,:length,:difficulty)
  end

end
