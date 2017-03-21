class Product < ApplicationRecord
	validates :name, presence: true
	validates :quantity, presence: true
	validates :quantity, numericality: { greater_than_or_equal_to: 0 }
	validates :price, format: { with: /\A\d+\.?\d{0,2}\z/ }
	validates :description, presence: true
	validates :email, presence: true, format: { with: /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9\.-]+\.[A-Za-z]+\Z/ }

	has_many :line_items
	before_destroy :ensure_not_referenced_by_any_line_item

	def self.promoted
		where(promoted: true)
	end

	private

	def ensure_not_reference_by_any_line_item
		if line_items.empty?
			return true
		else
			errors.add(:base, 'Line Items present')
			return false
		end
	end
end
