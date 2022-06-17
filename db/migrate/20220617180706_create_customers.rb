class CreateCustomers < ActiveRecord::Migration[6.1]
  def change
    create_table :customers do |t|
      t.string :last_name, null: false
      t.string :first_name, null: false
      t.string :last_name_kana, null: false
      t.string :first_name_kana, null: false
      t.integer :phone_number, null: false
      t.integer :postcode, null: false
      t.string :address, null: false
      t.text :memo

      t.timestamps
    end
  end
end
