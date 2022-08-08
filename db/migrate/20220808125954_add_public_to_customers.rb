class AddPublicToCustomers < ActiveRecord::Migration[6.1]
  def change
    add_column :customers, :metadata, :string
  end
end
