require 'rails_helper'

RSpec.describe "products/index.html.erb", type: :view do
  pending "add some examples to (or delete) #{__FILE__}"

  let(:products_list) { FactoryGirl.build_stubbed_list(:product, 3) }

  it "renders index with the correct dom elements" do
  	assign(:products, products_list)

  	render

  	expect(rendered).to have_selector(".table-bordered")
  end

  it "renders the correct products" do
  	assign(:products, products_list)
  	render

  	products_list.each do |product|
  		expect(rendered).to have_content(product.name)
  	end
  end
end
