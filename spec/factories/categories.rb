# spec/factories/categories.rb
FactoryBot.define do
  factory :category do
    name { 'Example Category' }
    icon { 'example_icon' }
    association :user # This assumes you have a user factory
  end
end
