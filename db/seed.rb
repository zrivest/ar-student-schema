require_relative 'config'
require_relative '../app/models/teacher'

require 'faker'

def random_teachers
  9.times do
    Teacher.create  :first_name => Faker::Name.first_name,
                    :last_name  => Faker::Name.last_name,
                    :gender     => ['Male','Female'].sample,
                    :birthday   => Date.today - rand(25..60)*365,
                    :email      => Faker::Internet.email,
                    :phone      => Faker::PhoneNumber.phone_number
  end
end

random_teachers
