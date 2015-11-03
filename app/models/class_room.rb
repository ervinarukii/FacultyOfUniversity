class ClassRoom < ActiveRecord::Base
  belongs_to :department
  has_many :students
  has_one :lecturer

  validates :name, :department, presence: true
end
