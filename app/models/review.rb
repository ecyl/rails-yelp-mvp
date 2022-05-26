class Review < ApplicationRecord
  belongs_to :restaurant

  # must have content and rating
  validates :content, :rating, presence: true
  # rating must be a number between 0 and 5
  validates :rating, numericality: { only_integer: true }
  validates :rating, inclusion: 0..5
end
