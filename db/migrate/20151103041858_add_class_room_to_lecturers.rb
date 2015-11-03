class AddClassRoomToLecturers < ActiveRecord::Migration
  def change
    add_reference :lecturers, :class_room, index: true
  end
end
