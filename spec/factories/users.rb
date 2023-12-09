require 'faker'

FactoryBot.define do
  factory :user do
    name { 'Jake Blake' }
    email { Faker::Internet.email } # Use Faker gem to generate a random email
    password { 'password123' } # Set a password for the user
  end
end
