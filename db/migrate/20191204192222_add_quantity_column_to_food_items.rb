class AddQuantityColumnToFoodItems < ActiveRecord::Migration[6.0]
  def change
    add_column :food_items, :quantity, :integer
  end
end
