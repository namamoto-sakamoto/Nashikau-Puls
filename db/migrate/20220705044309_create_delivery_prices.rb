class CreateDeliveryPrices < ActiveRecord::Migration[6.1]
  def change
    create_table :delivery_prices do |t|
      t.string :local_name
      t.string :size
      t.integer :price

      t.timestamps
    end
  end
end
