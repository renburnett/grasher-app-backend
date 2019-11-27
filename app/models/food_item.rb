class FoodItem < ApplicationRecord
  belongs_to :fridge
  enum food_type: [:processed, :fruit, :vegetable, :meat, :dairy]
end