require 'rails_helper'

RSpec.describe 'BudgetTransactions', type: :request do
  let(:user) { create(:user) }
  let(:category) { create(:category, user:) }

  describe 'POST /create' do
    it 'creates a new budget transaction' do
      expect do
        post category_budget_transactions_path(category),
             params: { budget_transaction: { name: 'Example', amount: 100 } }
      end.to change(BudgetTransaction, :count).by(0)
    end
  end
end
