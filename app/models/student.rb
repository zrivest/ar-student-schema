require_relative '../../db/config'

class Student < ActiveRecord::Base
  validates :email, :uniqueness => true, :format => { :with => /.+@.+\..{2,}/,
      :message => "Must be a valid email address." }

  validate :valid_age?
  validate :valid_phone_number?

  def name
    "#{self.first_name} #{self.last_name}"
  end

  def age
    age = (Date.today - self.birthday) / 365.25
    age.to_i
  end

  def valid_age?
    unless age >= 5
      errors.add(:birthday, "You must be older than 5.")
    end
  end

  def valid_phone_number?
    if self.phone.gsub(/\D/,"").length < 10
      errors.add(:phone, "Phone Number must have 10 digits.")
    end
  end

end
