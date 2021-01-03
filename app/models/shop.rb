class Shop < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_one :shop_info
  
  validates :name, :email, :shop_name, :zipcode, :prefecture, :municipality, :address, presence: true
  validates :name, length: { maximum: 10 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i.freeze
  validates :email, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }, allow_blank: true
  validates :shop_name, length: { maximum: 20 }
  validates :zipcode, format: { with: /\A[a-z0-9]+\z/i }, length: { is: 7 }, allow_blank: true
  validates :prefecture, length: { maximum: 5 }
  validates :municipality, length: { maximum: 10 }
  validates :address, :apartments, length: { maximum: 20 }
  validates :tel, format: { with: /\A[a-z0-9]+\z/i }, length: { maximum: 15 }, allow_blank: true
  
end
