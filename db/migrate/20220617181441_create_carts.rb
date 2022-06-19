class CreateCarts < ActiveRecord::Migration[6.1]
  def change
    create_table :carts do |t|
      t.integer :customer_id, null: false
      t.integer :product_type_id, null: false
      t.integer :amount, null: false
      t.integer :shipping_fee, null: false

      t.timestamps
    end
  end
end
