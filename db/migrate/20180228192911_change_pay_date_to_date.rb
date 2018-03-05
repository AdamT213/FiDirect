class ChangePayDateToDate < ActiveRecord::Migration[5.1]
  def change 
    change_column :recurring_payments, :pay_date, :datetime
  end
end
