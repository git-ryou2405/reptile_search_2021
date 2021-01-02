class CreateShops < ActiveRecord::Migration[6.1]
  def change
    create_table :shops do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :shop_name, null: false
      t.integer :zipcode, null: false
      t.string :prefecture, null: false
      t.string :municipality, null: false
      t.string :address, null: false
      t.string :apartments
      t.integer :tel

      t.timestamps
    end
  end
end
