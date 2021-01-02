[
  %w[田中 tanaka@test.com 爬虫類倶楽部中野店 1234567 東京都 中野区 中野6-15-13 nil 03-8888-8888],
  %w[佐藤 sato@test.com ワイルドモンスター 1234567 茨城県 日立市 中成沢町3-14-7 nil 03-8888-8888],
].each do |first,second,third,fourth,fifth,sixth,seventh,eighth,ninth|
  Shop.create!(
    name: first,
    email: second,
    shop_name: third,
    zipcode: fourth,
    prefecture: fifth,
    municipality: sixth,
    address: seventh,
    apartments: eighth,
    tel: ninth,
  )
end
p "Shop Create Success!!" # rubocop:disable Rails/Output

[
  %w[shop1の特徴 アクセス方法 地図情報 営業時間 休館日 取扱い動物 取扱い餌 取扱い用品 URL twitter facebook],
  %w[shop2の特徴 アクセス方法 地図情報 営業時間 休館日 取扱い動物 取扱い餌 取扱い用品 URL twitter facebook],
].each.with_index(1) do |(first,second,third,fourth,fifth,sixth,seventh,eighth,ninth,tenth,eleventh), i|
  shop = Shop.find(i)
  shop.create_shop_info(
    shop_features: first,
    howto_access: second,
    map_info: third,
    business_hours: fourth,
    holiday: fifth,
    handling_animals: sixth,
    handling_feeds: seventh,
    handling_goods: eighth,
    url: ninth,
    twitter: tenth,
    facebook: eleventh,
  )
end
p "Shop_info Create Success!!" # rubocop:disable Rails/Output
