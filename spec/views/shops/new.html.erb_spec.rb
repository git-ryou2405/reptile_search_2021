require 'rails_helper'

RSpec.describe "shops/new", type: :view do
  before(:each) do
    assign(:shop, Shop.new(
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

  it "renders new shop form" do
    render

    assert_select "form[action=?][method=?]", shops_path, "post" do

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
