class Delivery < ApplicationRecord
  belongs_to :customer
  
  # バリデーション
  validates :customer_id, :name, :name_kana, :postcode, :address, :phone_number, presence: true
  
  def address_display
    '〒' + postcode.to_s + ' ' + address + ' ' + name
  end  
  
end
