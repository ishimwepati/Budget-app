class BudgetTransaction < ApplicationRecord
  belongs_to :user, foreign_key: 'author_id'
  has_many :budget_transactions_categories
  has_many :categories, through: :budget_transactions_categories

  validates :name, presence: true
  validates :amount, presence: true
end
