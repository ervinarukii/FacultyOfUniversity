class StudentSubject < ActiveRecord::Base
  belongs_to :student
  belongs_to :subject

  validates :student, :subject, presence: true
end
