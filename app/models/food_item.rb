# frozen_string_literal: true

class FoodItem < ApplicationRecord
  before_save :check_expiring_in_48h
  
  belongs_to :fridge
  enum food_type: { processed: 0, fruit: 1, vegetable: 2, meat: 3, dairy: 4, grain: 5 }

  def check_expiring_in_48h
    # add 48 hours
    hour_48 = Time.zone.now + 172800
    if self.expiration_date > hour_48
      self.expires_in_48h = false
    else
      self.expires_in_48h = true
    end
  end
end