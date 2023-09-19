class Exercise < ApplicationRecord
  has_many :notes, dependent: :destroy
  accepts_nested_attributes_for :notes
  validates :name, presence: true
  validates :pattern, presence: true
end
