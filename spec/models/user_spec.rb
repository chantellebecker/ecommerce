require 'rails_helper'

RSpec.describe User, type: :model do
	describe 'name' do
		it 'cant be nil' do
			admin_user = FactoryGirl.build(:admin_user, name: nil)
			non_admin_user = FactoryGirl.build(:non_admin_user, name: nil)
			expect(admin_user).to be_invalid
			expect(non_admin_user).to be_invalid
		end
	end

	describe '.admins' do
		it 'returns all admins' do
			all_admins = FactoryGirl.create_list(:admin_user, 2)
			non_admin_users = FactoryGirl.create_list(:non_admin_user, 2)
			expect(User.admin).to eq(all_admins)
		end
	end


end
