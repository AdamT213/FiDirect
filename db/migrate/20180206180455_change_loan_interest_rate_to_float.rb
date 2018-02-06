class ChangeLoanInterestRateToFloat < ActiveRecord::Migration[5.1]
  def change 
    change_column :loans, :interest_rate, :float
  end
end
