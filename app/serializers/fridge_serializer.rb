class FridgeSerializer < ActiveModel::Serializer
  attributes :id, :name, :user_id, :food_items, :food_capacity, :drink_capacity, :total_items_value
end
