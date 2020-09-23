class FoodItemSerializer < ActiveModel::Serializer
  attributes :id,
  :name,
  :is_drink,
  :food_type,
  :price,
  :quantity,
  :expiration_date,
  :expires_in_48h
end
