require 'rails_helper'

RSpec.describe "shops/show", type: :view do
  before(:each) do
    @shop = assign(:shop, Shop.create!(
      name: "Name",
      email: "Email",
      shop_name: "Shop Name",
      zipcode: 2,
      prefecture: "Prefecture",
      municipality: "Municipality",
      address: "Address",
      apartments: "Apartments",
      tel: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Shop Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Prefecture/)
    expect(rendered).to match(/Municipality/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Apartments/)
    expect(rendered).to match(/3/)
  end
end
