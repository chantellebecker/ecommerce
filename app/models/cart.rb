class Cart < ApplicationRecord
  belongs_to :user

  validates :user, presence: true

  def subtotal
  	line_items.to_a.sum { |item| item.total_price }
  end

  def add_item(product_id)
  	current_item = line_items.find_by(product_id: product_id)

  	if current_item
  		current_item.quantity += 1
  	else 
  		current_item = line_items.build(product_id: product_id)
  	end
  	current_item
  end
end
