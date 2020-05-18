class FridgeSerializer < ActiveModel::Serializer
  attributes :id,
  :user_id,
  :name,
  :food_capacity,
  :drink_capacity,
  :is_full,
  :total_items_value,
  :food_items
end
