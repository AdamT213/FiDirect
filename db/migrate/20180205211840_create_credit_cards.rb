class CreateCreditCards < ActiveRecord::Migration[5.1]
  def change
    create_table :credit_cards do |t|
      t.string :provider
      t.integer :balance
      t.integer :interest_rate
      t.integer :user_id

      t.timestamps
    end
  end
end
