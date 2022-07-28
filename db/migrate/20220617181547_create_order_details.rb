class CreateOrderDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :order_details do |t|
      t.integer :order_id, null: false
      t.integer :product_type_id, null: false
      t.integer :total, null: false
      t.string :postcode, null: false
      t.string :address, null: false
      t.string :name, null: false
      t.string :name_kana, null: false
      t.string :phone_number, null: false
      t.integer :shipping_address, null: false, default: 0

      t.timestamps
    end
  end
end