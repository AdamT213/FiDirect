class CreateBankAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :bank_accounts do |t|
      t.string :name
      t.integer :balance 
      t.integer :user_id

      t.timestamps
    end
  end
end
