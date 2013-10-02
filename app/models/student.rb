require_relative '../../db/config'
require 'date'

class Student < ActiveRecord::Base
  validates :email, format: { with: /.+@.+\..{2,}/ }
  validates :phone, format: { with: /.{10,}/ }
  validates :age, :numericality => { :greater_than => 5}
  validates_uniqueness_of :email

  def name
    "#{first_name} #{last_name}"
  end

  def age
    age = (Date.today - self.birthday) / 365
    age.to_i
  end

end
