class Restaurant < ApplicationRecord
  CATEGORY = ['chinese', 'italian', 'japanese', 'french', 'belgian']
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: Restaurant::CATEGORY }
  has_many :reviews, dependent: :destroy
end
