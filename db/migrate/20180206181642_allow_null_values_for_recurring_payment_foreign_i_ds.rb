class AllowNullValuesForRecurringPaymentForeignIDs < ActiveRecord::Migration[5.1]
  def change 
    change_column :recurring_payments, :credit_card_id, :integer, default: :null
  end
end
