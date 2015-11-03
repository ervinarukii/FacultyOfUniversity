class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.text :address
      t.string :email
      t.string :phone
      t.references :class_room, index: true

      t.timestamps
    end
  end
end
