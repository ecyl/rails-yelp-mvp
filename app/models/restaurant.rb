class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORIES = %w[chinese italian japanese french belgian]

  # must have name, address and category
  validates :name, :address, :category, presence: true
  # category must belong to this fixed list: ["chinese", "italian", "japanese", "french", "belgian"].
  validates :category, inclusion: { in: CATEGORIES }
end
