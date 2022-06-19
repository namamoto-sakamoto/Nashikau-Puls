class Cart < ApplicationRecord
  belongs_to :farmer
  belongs_to :product_type
end
