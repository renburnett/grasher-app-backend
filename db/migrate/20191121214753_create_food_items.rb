class CreateFoodItems < ActiveRecord::Migration[6.0]
  def change
    create_table :food_items do |t|
      t.string :name
      t.boolean :is_drink
      t.boolean :is_processed
      t.float :price
      t.datetime :expiration_date
      t.references :fridge, null: false, foreign_key: true

      t.timestamps
    end
  end
end
