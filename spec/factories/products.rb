FactoryGirl.define do
  factory :product do
    sequence(:name) {|num| "##{num} Macbook"} 
    quantity 1
    price "9.99"
    description "MyText"
    promoted false
    email "email@gmail.com"
  end
end
