class CreateLoans < ActiveRecord::Migration[5.1]
  def change
    create_table :loans do |t|
      t.integer :user_id
      t.integer :interest_rate
      t.integer :remaining_balance

      t.timestamps
    end
  end
end
