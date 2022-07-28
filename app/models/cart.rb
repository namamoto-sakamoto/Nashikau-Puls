class Cart < ApplicationRecord
  belongs_to :customer
  belongs_to :product_type
  
  # enum status: { receipt: 0, accrued: 1 }
  # enum shipping_address: { take_out: 0, my_address: 1, registered_address: 2 }
  
  def subtotal
    product_type.tax_price * amount
  end
  
end
