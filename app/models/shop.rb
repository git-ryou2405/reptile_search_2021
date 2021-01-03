class Shop < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: [:facebook, :google_oauth2]
  has_one :shop_info, dependent: :destroy
  
  validates :name, :email, presence: true
  # validates :name, :email, :shop_name, :zipcode, :prefecture, :municipality, :address, presence: true
  validates :name, length: { maximum: 10 }
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i.freeze
  validates :email, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }, allow_blank: true
  validates :shop_name, length: { maximum: 20 }
  validates :zipcode, format: { with: /\A[a-z0-9]+\z/i }, length: { is: 7 }, allow_blank: true
  validates :prefecture, length: { maximum: 5 }
  validates :municipality, length: { maximum: 10 }
  validates :address, :apartments, length: { maximum: 20 }
  validates :tel, format: { with: /\A[a-z0-9]+\z/i }, length: { maximum: 15 }, allow_blank: true
  
  # oauth認証用
  def self.find_for_oauth(auth)
    shop = Shop.where(uid: auth.uid, provider: auth.provider).first
    unless shop
      shop = Shop.create(
        provider: auth.provider,
        uid:      auth.uid,
        name:     auth.info.name,
        email:    auth.info.email,
        # image:    auth.info.image,
        # token:    auth.credentials.token,
        password: Devise.friendly_token[0, 20]
      )
    end
    shop
  end
end
