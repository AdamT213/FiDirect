class AllowNullValuesForRecurringPaymentForeignIDsContinued < ActiveRecord::Migration[5.1]
  def change 
    change_column :recurring_payments, :bank_account_id, :integer, :default => 0 
    change_column :recurring_payments, :loan_id, :integer, :default => 0 
    change_column :recurring_payments, :investment_id, :integer, :default => 0
  end 
end
