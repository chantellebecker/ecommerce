FactoryGirl.define do
  factory :admin_user, class: User do
  	name 'Admin User'
  	sequence(:email) { |num| "admin_user##{num}@admin.com" }
  	password 'password'
  	password_confirmation 'password'
  	admin true
  end

  factory :non_admin_user, class: User do
  	name 'Regular User'
  	sequence(:email) { |num| "regular_user##{num}@regular.com" }
  	password 'password'
  	password_confirmation 'password'
  	admin false
  end
end
