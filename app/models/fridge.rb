# frozen_string_literal: true

class Fridge < ApplicationRecord
  belongs_to :user
  has_many :food_items, dependent: :destroy
end
