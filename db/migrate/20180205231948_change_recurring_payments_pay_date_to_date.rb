
class ChangeRecurringPaymentsPayDateToDate < ActiveRecord::Migration[5.1]
  def change
    change_column :recurring_payments, :pay_date, :date
  end
end
