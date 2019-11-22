class FridgeSerializer < ActiveModel::Serializer
  attributes :id, :name, :user, :food_capacity, :drink_capacity, :total_items_value
end


