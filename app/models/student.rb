class Student < ActiveRecord::Base
  belongs_to :class_room

  has_many :student_subjects, dependent: :destroy
  has_many :subjects, through: :student_subjects

  validates :name, :address, presence: true
end
