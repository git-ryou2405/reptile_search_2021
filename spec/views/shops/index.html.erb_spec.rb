require 'rails_helper'

RSpec.describe "shops/index", type: :view do
  before(:each) do
    assign(:shops, [
      Shop.create!(
        name: "Name",
        email: "Email",
        shop_name: "Shop Name",
        zipcode: 2,
        prefecture: "Prefecture",
        municipality: "Municipality",
        address: "Address",
        apartments: "Apartments",
        tel: 3
      ),
      Shop.create!(
        name: "Name",
        email: "Email",
        shop_name: "Shop Name",
        zipcode: 2,
        prefecture: "Prefecture",
        municipality: "Municipality",
        address: "Address",
        apartments: "Apartments",
        tel: 3
      )
    ])
  end

  it "renders a list of shops" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
    assert_select "tr>td", text: "Shop Name".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: "Prefecture".to_s, count: 2
    assert_select "tr>td", text: "Municipality".to_s, count: 2
    assert_select "tr>td", text: "Address".to_s, count: 2
    assert_select "tr>td", text: "Apartments".to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
  end
end
