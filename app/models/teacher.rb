require_relative '../../db/config'

class Teacher < ActiveRecord::Base
  validates :email, :uniqueness => true, :format => { :with => /.+@.+\..{2,}/,
      :message => "Must be a valid email address." }

  has_many :students, through: :teacher_assignments
  has_many :teacher_assignments

end
