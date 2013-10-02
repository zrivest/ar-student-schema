require_relative '../../db/config'

class TeacherAssignment < ActiveRecord::Base

  belongs_to :student
  belongs_to :teacher

end
