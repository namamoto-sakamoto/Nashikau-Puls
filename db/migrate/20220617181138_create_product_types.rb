class CreateProductTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :product_types do |t|
      t.integer :jpear_id, null: false
      t.string :item_name, null: false
      t.integer :tax_price, null: false

      t.timestamps
    end
  end
end
