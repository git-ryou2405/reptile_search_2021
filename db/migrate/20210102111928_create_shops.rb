class CreateShops < ActiveRecord::Migration[6.1]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :email
      t.string :shop_name
      t.integer :zipcode
      t.string :prefecture
      t.string :municipality
      t.string :address
      t.string :apartments
      t.integer :tel

      t.timestamps
    end
  end
end
