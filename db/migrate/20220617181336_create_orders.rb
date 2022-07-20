class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :customer_id, null: false
      t.integer :status, null: false, default: 0
      t.integer :bill, null: false

      t.timestamps
    end
  end
end
