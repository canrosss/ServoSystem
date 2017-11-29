class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :image_1
      t.string :image_2
      t.string :image_3
      t.string :image_4
      t.float :unit_price
      t.integer :units_in_stock

      t.timestamps
    end
  end
end
