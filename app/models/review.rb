class Review < ApplicationRecord
  belongs_to :restaurant
  validates :rating, length: { minimum: 0 }
  validates :rating, length: { maximum: 5 }
  validates :rating, inclusion: { in: 0..5 }
  validates :rating, numericality: { only_integer: true }
  validates :content, presence: true
end
