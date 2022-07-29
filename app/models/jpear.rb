class Jpear < ApplicationRecord
  has_many :product_types, dependent: :destroy
  has_one_attached :image
  belongs_to :farmer
  
  # バリデーション
  validates :image, :name, :status, presence: true
  validates :name, format: {with: /\A[ぁ-んァ-ン一-龥]/ }
  
  # 画像未投稿時の対処
  def get_image(width, height)
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    image.variant(resize_to_limit: [width, height]).processed
  end
  
  #enumにて販売状況と文字列の紐づけ
  enum status: { sold: 0, sale: 1 }
end
