require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'associations' do
    it { should belong_to(:user) }
    it { should have_many(:budget_transactions_categories) }
    it { should have_many(:budget_transactions).through(:budget_transactions_categories) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:icon) }
  end

  describe 'total_amount' do
    it 'calculates the total amount of associated budget transactions' do
      user = create(:user)
      category = create(:category, user:)
      transaction1 = create(:budget_transaction, user:, amount: 100)
      transaction2 = create(:budget_transaction, user:, amount: 150)

      create(:budget_transactions_category, budget_transaction: transaction1, category:)
      create(:budget_transactions_category, budget_transaction: transaction2, category:)

      expect(category.total_amount).to eq(250)
    end
  end
end
