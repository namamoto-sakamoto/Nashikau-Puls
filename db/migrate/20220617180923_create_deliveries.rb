class CreateDeliveries < ActiveRecord::Migration[6.1]
  def change
    create_table :deliveries do |t|
      t.integer :customer_id, null: false
      t.integer :postcode, null: false
      t.string :address, null: false
      t.string :name, null: false
      t.string :name_kana, null: false
      t.integer :phone_number, null: false

      t.timestamps
    end
  end
end
