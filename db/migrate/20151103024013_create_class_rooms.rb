class CreateClassRooms < ActiveRecord::Migration
  def change
    create_table :class_rooms do |t|
      t.string :name
      t.references :department, index: true

      t.timestamps
    end
  end
end
