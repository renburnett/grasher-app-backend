# frozen_string_literal: true

# Password field abstracted away with has_secure_password for bcrypt
class User < ApplicationRecord
  has_secure_password
  
  has_many :fridges, dependent: :destroy
  has_many :food_items, through: :fridges, dependent: :destroy
  accepts_nested_attributes_for :food_items

  validates :email, presence: true
  validates :phone_number, presence: true
end