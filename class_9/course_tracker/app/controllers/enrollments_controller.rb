class EnrollmentsController < ApplicationController
  def create
    enrollment_parameters = enrollment_params.merge(student_id: params[:id])
    Enrollment.create(enrollment_parameters)
    redirect_to "/students"
  end
  
  def index
    student = Student.find(params[:id])
    @enrollments = student.enrollments.all
    @enrollment = student.enrollments.new
    render "index"
  end
  
  
private
  def enrollment_params
    params.require(:enrollment).permit(:course_id)
  end
  
end
