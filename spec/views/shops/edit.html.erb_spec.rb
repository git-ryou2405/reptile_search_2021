require 'rails_helper'

RSpec.describe "shops/edit", type: :view do
  before(:each) do
    @shop = assign(:shop, Shop.create!(
      name: "MyString",
      email: "MyString",
      shop_name: "MyString",
      zipcode: 1,
      prefecture: "MyString",
      municipality: "MyString",
      address: "MyString",
      apartments: "MyString",
      tel: 1
    ))
  end

  it "renders the edit shop form" do
    render

    assert_select "form[action=?][method=?]", shop_path(@shop), "post" do

      assert_select "input[name=?]", "shop[name]"

      assert_select "input[name=?]", "shop[email]"

      assert_select "input[name=?]", "shop[shop_name]"

      assert_select "input[name=?]", "shop[zipcode]"

      assert_select "input[name=?]", "shop[prefecture]"

      assert_select "input[name=?]", "shop[municipality]"

      assert_select "input[name=?]", "shop[address]"

      assert_select "input[name=?]", "shop[apartments]"

      assert_select "input[name=?]", "shop[tel]"
    end
  end
end
