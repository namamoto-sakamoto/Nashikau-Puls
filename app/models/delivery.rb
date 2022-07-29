class Delivery < ApplicationRecord
  belongs_to :customer
  
  # バリデーション
  validates :customer_id, :name, :name_kana, :postcode, :address, :phone_number, presence: true
  validates :name, format: {with:	/\A[ぁ-んァ-ン一-龥]/ }
  validates :name_kana, format: {with: /\A[ァ-ヶー－]+\z/ }
  validates :postcode, format: {with: /\A\d{7}\z/ }
  validates :phone_number, format: {with: /\A\d{10,11}\z/ }
  validates :address, length: { in: 5..50 }
  
  def address_display
    '〒' + postcode.to_s + ' ' + address + ' ' + name
  end  
  
end
