class Cocktail < ApplicationRecord
  has_one_attached :photo
  has_many :ingredients, through: :doses
  has_many :doses, dependent: :destroy
  has_many :reviews, dependent: :destroy
  validates :name, presence: true, uniqueness: true
end
