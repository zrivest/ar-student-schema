require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreateTeacherAssignments < ActiveRecord::Migration
  def change
    create_table :teacher_assignments do |t|
      t.integer :teacher_id
      t.integer :student_id

      t.timestamps
    end
  end
end
