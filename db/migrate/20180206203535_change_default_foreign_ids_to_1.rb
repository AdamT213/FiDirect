class ChangeDefaultForeignIdsTo1 < ActiveRecord::Migration[5.1]
  def change
    change_column :recurring_payments, :bank_account_id, :integer, :default => 1
    change_column :recurring_payments, :credit_card_id, :integer, :default => 1
    change_column :recurring_payments, :loan_id, :integer, :default => 1
    change_column :recurring_payments, :investment_id, :integer, :default => 1
  end
end
