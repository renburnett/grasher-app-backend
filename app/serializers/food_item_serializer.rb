class FoodItemSerializer < ActiveModel::Serializer
  attributes :id,
  :name,
  :is_drink,
  :food_type,
  :price,
  :quantity,
  :expiration_date
end
