class Customer < ApplicationRecord
  belongs_to :farmer
  has_many :deliveries, dependent: :destroy
  has_many :carts, dependent: :destroy
  has_many :orders
  
  def full_name
    last_name + " " + first_name
  end
  
   def full_name_kana
    last_name_kana + " " + first_name_kana
  end
end
