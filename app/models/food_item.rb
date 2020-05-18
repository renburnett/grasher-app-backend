# frozen_string_literal: true

class FoodItem < ApplicationRecord
  belongs_to :fridge
  enum food_type: { processed: 0, fruit: 1, vegetable: 2, meat: 3, dairy: 4 }
end
