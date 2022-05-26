class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  # must have name, address and category
  validates :name, :address, :category, presence: true
  # category must belong to this fixed list: ["chinese", "italian", "japanese", "french", "belgian"].
  validates :category, inclusion: { in: %w[chinese italian japanese french belgian] }
end
