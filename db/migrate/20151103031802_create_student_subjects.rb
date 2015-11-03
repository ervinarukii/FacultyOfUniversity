class CreateStudentSubjects < ActiveRecord::Migration
  def change
    create_table :student_subjects do |t|
      t.references :student, index: true
      t.references :subject, index: true
      t.integer :score

      t.timestamps
    end
  end
end
