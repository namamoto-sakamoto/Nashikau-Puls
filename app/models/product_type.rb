class ProductType < ApplicationRecord
  belongs_to :jpear
  has_many :carts
  has_many :order_details
end
