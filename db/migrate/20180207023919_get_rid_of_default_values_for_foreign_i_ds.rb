class GetRidOfDefaultValuesForForeignIDs < ActiveRecord::Migration[5.1]
  def change 
    change_column_default :recurring_payments, :credit_card_id, nil 
    change_column_default :recurring_payments, :bank_account_id, nil
    change_column_default :recurring_payments, :loan_id, nil 
    change_column_default :recurring_payments, :investment_id, nil
  end
end
