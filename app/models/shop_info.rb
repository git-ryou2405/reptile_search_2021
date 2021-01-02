class ShopInfo < ApplicationRecord
  belongs_to :shop
  
  validates :shop_features, presence: true
  validates :shop_features, length: { maximum: 100 }
  validates :howto_access, length: { maximum: 30 }
  validates :map_info, length: { maximum: 50 }
  validates :business_hours, :holiday, :handling_animals,
            :handling_feeds, :handling_goods, length: { maximum: 30 }
  validates :url, length: { maximum: 100 }
  validates :twitter, :facebook, length: { maximum: 100 }
end
