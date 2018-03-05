class CreateRecurringPayments < ActiveRecord::Migration[5.1]
  def change
    create_table :recurring_payments do |t|
      t.string :source
      t.boolean :status
      t.datetime :pay_date
      t.integer :pay_amount
      t.integer :payment_frequency
      t.integer :duration 
      t.integer :bank_account_id 
      t.integer :credit_card_id 
      t.integer :loan_id 
      t.integer :investment_id 
    end
  end
end
