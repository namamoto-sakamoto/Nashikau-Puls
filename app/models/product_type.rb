class ProductType < ApplicationRecord
  belongs_to :jpear
  has_many :carts
  has_many :order_details
  
  # バリデーション
  validates :jpear_id, :item_name, :tax_price, presence: true
  
  
   def product_type_set
    item_name + ' ' + tax_price.to_s + '円'
  end  
end
