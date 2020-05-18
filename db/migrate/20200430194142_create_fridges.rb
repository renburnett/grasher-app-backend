class CreateFridges < ActiveRecord::Migration[6.0]
  def change
    create_table :fridges do |t|
      t.string :name
      t.integer :food_capacity
      t.integer :drink_capacity
      t.boolean :is_full
      t.float :total_items_value
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
