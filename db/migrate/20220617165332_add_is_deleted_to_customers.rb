class AddIsDeletedToCustomers < ActiveRecord::Migration[6.1]
  def change
    add_column :farmers, :is_deleted, :boolean, default: false
  end
end
