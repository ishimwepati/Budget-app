FactoryBot.define do
  factory :budget_transactions_category do
    association :budget_transaction
    association :category
  end
end
