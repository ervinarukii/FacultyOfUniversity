class Lecturer < ActiveRecord::Base
  belongs_to :subject
  belongs_to :class_room

  validates :name, :subject, presence: true
end
