class LineItem < ApplicationRecord
  belongs_to :product
  belongs_to :cart

  validates :cart, :product, presence: true

  def total_price
  	item.price * quantity
  end
end
