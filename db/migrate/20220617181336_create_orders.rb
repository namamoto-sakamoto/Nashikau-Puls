class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.integer :postcode, null: false
      t.string :address, null: false
      t.string :name, null: false
      t.string :name_kana, null: false
      t.integer :phone_number, null: false
      t.integer :bill, null: false

      t.timestamps
    end
  end
end
