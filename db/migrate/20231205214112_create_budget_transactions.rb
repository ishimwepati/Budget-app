class CreateBudgetTransactions < ActiveRecord::Migration[7.1]
  def change
    create_table :budget_transactions do |t|
      t.integer :author_id
      t.string :name
      t.decimal :amount

      t.timestamps
    end
  end
end
