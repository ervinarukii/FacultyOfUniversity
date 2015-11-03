class Department < ActiveRecord::Base
  has_many :class_rooms, dependent: :destroy

  validates :name, :location, presence: true
end
