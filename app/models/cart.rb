class Cart < ApplicationRecord
  belongs_to :customer
  belongs_to :product_type
  
  def subtotal
    product_type.tax_price * amount
  end
end
