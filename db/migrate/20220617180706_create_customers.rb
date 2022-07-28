class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.integer :farmer_id, null: false
      t.string :last_name, null: false
      t.string :first_name, null: false
      t.string :last_name_kana, null: false
      t.string :first_name_kana, null: false
      t.string :phone_number, null: false
      t.string :postcode, null: false
      t.string :address, null: false
      t.text :memo

      t.timestamps
    end
  end
end
