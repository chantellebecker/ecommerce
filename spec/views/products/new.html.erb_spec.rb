require 'rails_helper'

RSpec.describe "products/new.html.erb", type: :view do
  pending "add some examples to (or delete) #{__FILE__}"

  it "renders the new action with dom elements" do
  	@product = Product.new

  	render

  	expect(rendered).to have_content("New Product")
  	expect(rendered).to have_selector(".form-control")
  end

end
