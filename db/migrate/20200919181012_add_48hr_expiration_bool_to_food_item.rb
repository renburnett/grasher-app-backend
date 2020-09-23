class Add48hrExpirationBoolToFoodItem < ActiveRecord::Migration[6.0]
  def change
    add_column :food_items, :expires_in_48h, :boolean
  end
end
