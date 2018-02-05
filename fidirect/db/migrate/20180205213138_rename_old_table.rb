class RenameOldTable < ActiveRecord::Migration[5.1]
  def change 
    rename_table :reccuring_payments, :recurring_payments
  end
end
