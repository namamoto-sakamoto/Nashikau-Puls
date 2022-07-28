class OrderDetail < ApplicationRecord
  belongs_to :order
  belongs_to :product_type
  
  def subtotal
    product_type.tax_price * total
  end
  
end
