class CreateJpears < ActiveRecord::Migration[6.1]
  def change
    create_table :jpears do |t|
      t.integer :farmer_id, null: false
      t.string :name, null: false
      t.integer :status, null: false, default: 0
      
      t.timestamps
    end
  end
end
