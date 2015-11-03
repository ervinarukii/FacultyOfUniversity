class Subject < ActiveRecord::Base
  has_many :lecturers

  has_many :student_subjects, dependent: :destroy
  has_many :students, through: :student_subjects

  validates :name, presence: true
end
