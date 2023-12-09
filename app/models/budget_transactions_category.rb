class BudgetTransactionsCategory < ApplicationRecord
  belongs_to :budget_transaction
  belongs_to :category
end
