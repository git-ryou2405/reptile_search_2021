class CreateShopInfos < ActiveRecord::Migration[6.1]
  def change
    create_table :shop_infos do |t|
      t.string :shop_features, null: false
      t.string :howto_access
      t.string :map_info, null: false
      t.string :business_hours
      t.string :holiday
      t.string :handling_animals
      t.string :handling_feeds
      t.string :handling_goods
      t.string :url
      t.string :twitter
      t.string :facebook
      t.references :shop, null: false, foreign_key: true

      t.timestamps
    end
  end
end
