class CreateCarts < ActiveRecord::Migration[6.1]
  def change
    create_table :carts do |t|
      t.integer :amount, null: false
      t.integer :shipping_fee, null: false

      t.timestamps
    end
  end
end
