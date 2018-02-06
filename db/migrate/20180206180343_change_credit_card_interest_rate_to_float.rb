class ChangeCreditCardInterestRateToFloat < ActiveRecord::Migration[5.1]
  def change 
    change_column :credit_cards, :interest_rate, :float
  end
end
