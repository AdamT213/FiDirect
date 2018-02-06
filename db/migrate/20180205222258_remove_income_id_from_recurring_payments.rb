class RemoveIncomeIdFromRecurringPayments < ActiveRecord::Migration[5.1]
  def change
    remove_column :recurring_payments, :income_id
  end
end
