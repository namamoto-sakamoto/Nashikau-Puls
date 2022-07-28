class AddDetailsToOrderDetails < ActiveRecord::Migration[6.1]
  def change
    add_column :order_details, :shipping_address, :integer, null: false, default: 0
  end
end
