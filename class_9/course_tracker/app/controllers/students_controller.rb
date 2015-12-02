class StudentsController < ApplicationController

  def enrollments
      student = Student.find(params[:id])
      @enrollments = student.enrollments.all
      @enrollment = student.enrollments.new
    render "enrollments"
  end

  def index
    @students = Student.all
    @student = Student.new
    @enrollments = Enrollment.all
    @enrollment = Enrollment.new
    render "index"
  end
  
  def create
    Student.create(student_params)
    redirect_to "/students"
  end

  def new
    @student = Student.new
    render "new"
  end

private

  def student_params
    params.require(:student).permit(:name,:email,:age)
  end

end
