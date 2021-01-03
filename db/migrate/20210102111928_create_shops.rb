class CreateShops < ActiveRecord::Migration[6.1]
  def change
    create_table :shops do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :shop_name
      t.integer :zipcode
      t.string :prefecture
      t.string :municipality
      t.string :address
      t.string :apartments
      t.integer :tel
      t.string :password
      t.string :provider
      t.string :uid

      t.timestamps
    end
  end
end
