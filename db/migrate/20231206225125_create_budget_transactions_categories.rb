class CreateBudgetTransactionsCategories < ActiveRecord::Migration[6.0]
  def change
    create_table :budget_transactions_categories do |t|
      t.references :budget_transaction, null: false, foreign_key: true, index: true
      t.references :category, null: false, foreign_key: true, index: true
      t.timestamps
    end
  end
end
