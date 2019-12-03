class RemoveIsProcessedFromFoodItems < ActiveRecord::Migration[6.0]
  def change
    remove_column :food_items, :is_processed
    add_column :food_items, :food_type, :integer
  end
end
