class Product < ApplicationRecord
	validates :name, presence: true
	validates :quantity, presence: true
	validates :quantity, numericality: { greater_than_or_equal_to: 0 }
	validates :price, format: { with: /\A\d+\.?\d{0,2}\z/ }
	validates :description, presence: true
	validates :email, presence: true, format: { with: /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9\.-]+\.[A-Za-z]+\Z/ }

	def self.promoted
		where(promoted: true)
	end

	def check_for_admin
		unless current_user.admin?
			redirect_to root_path
		end
	end
end
