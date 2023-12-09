require 'rails_helper'

RSpec.describe BudgetTransaction, type: :model do
  describe 'associations' do
    it { should belong_to(:user).with_foreign_key('author_id') }
    it { should have_many(:budget_transactions_categories) }
    it { should have_many(:categories).through(:budget_transactions_categories) }
  end

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:amount) }
  end
end
