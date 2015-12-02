class Enrollment < ActiveRecord::Base
  belongs_to :enrollments
  belongs_to :students
end
