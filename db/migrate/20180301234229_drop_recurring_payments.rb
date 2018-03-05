class DropRecurringPayments < ActiveRecord::Migration[5.1]
  def change
    drop_table :recurring_payments
  end
end
