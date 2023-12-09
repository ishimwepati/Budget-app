class Category < ApplicationRecord
  belongs_to :user
  has_many :budget_transactions_categories
  has_many :budget_transactions, through: :budget_transactions_categories

  validates :name, presence: true
  validates :icon, presence: true

  def total_amount
    budget_transactions.sum(:amount)
  end
end
