class Order < ApplicationRecord
  belongs_to :customer
  has_many :order_details
  
  enum status: { receipt: 0, accrued: 1 }
end
