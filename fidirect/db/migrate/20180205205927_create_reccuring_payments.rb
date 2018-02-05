class CreateReccuringPayments < ActiveRecord::Migration[5.1]
  def change
    create_table :reccuring_payments do |t|
      t.string :source
      t.boolean :status
      t.string :pay_date
      t.integer :pay_amount
      t.integer :duration 
      t.integer :bank_account_id 
      t.integer :credit_card_id 
      t.integer :loan_id 
      t.integer :investment_id 
      t.integer :income_id

      t.timestamps
    end
  end
end
