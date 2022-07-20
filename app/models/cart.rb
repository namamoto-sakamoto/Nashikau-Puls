class Cart < ApplicationRecord
  belongs_to :customer
  belongs_to :product_type
  
  enum status: { receipt: 0, accrued: 1 }
  
  def subtotal
    product_type.tax_price * amount
  end
end
