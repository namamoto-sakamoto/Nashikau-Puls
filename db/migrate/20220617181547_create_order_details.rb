class CreateOrderDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :order_details do |t|
      t.integer :total, null: false
      t.integer :status, null: false

      t.timestamps
    end
  end
end
