class AddSubjectToLecturers < ActiveRecord::Migration
  def change
    add_reference :lecturers, :subject, index: true
  end
end
