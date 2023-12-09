FactoryBot.define do
  factory :budget_transaction do
    author_id { 1 }
    name { 'MyString' }
    amount { '9.99' }
  end
end
