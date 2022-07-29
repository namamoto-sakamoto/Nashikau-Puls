class Customer < ApplicationRecord
  belongs_to :farmer
  has_many :deliveries, dependent: :destroy
  has_many :carts, dependent: :destroy
  has_many :orders
  
  # バリデーション
  validates :last_name, :first_name, :first_name_kana, :last_name_kana, :postcode, :address, :phone_number, presence: true
  validates :last_name, :first_name, format: { with: /\A[ぁ-んァ-ン一-龥]/ }
  validates :first_name_kana, :last_name_kana, format: { with: /\A[ァ-ヶー－]+\z/ }
  validates :postcode, format: { with: /\A\d{7}\z/ }
  validates :phone_number, format: { with: /\A\d{10,11}\z/ }
  validates :address, length: { in: 5..50 }
  
  def full_name
    last_name + " " + first_name
  end
  
   def full_name_kana
    last_name_kana + " " + first_name_kana
   end
   
   def my_address_display
    '〒' + postcode.to_s + ' ' + address
  end
end
