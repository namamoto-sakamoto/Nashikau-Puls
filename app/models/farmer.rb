class Farmer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :customers, dependent: :destroy
  has_many :jpears
  
  # バリデーション
  validates :farmer_name, :name, :name_kana, :phone_number, :address, :postcode, presence: true
  validates :name, format: { with: /\A[ぁ-んァ-ン一-龥]/ }
  validates :name_kana, format: { with: /\A[ァ-ヶー－]+\z/ }
  validates :postcode, format: { with: /\A\d{7}\z/ }
  validates :phone_number, format: { with: /\A\d{10,11}\z/ }
  validates :address, length: { in: 5..50 }
  
  # enum status: { validity: 0, out:1 }
end
