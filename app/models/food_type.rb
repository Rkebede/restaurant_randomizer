class FoodType < ApplicationRecord
  # validates :name, presence: true 
  validates :name, uniqueness: true 
  has_many :restaurant_food_types, dependent: :destroy
  has_many :restaurants, through: :restaurant_food_types
end
