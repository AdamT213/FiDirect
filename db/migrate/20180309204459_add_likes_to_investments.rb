class AddLikesToInvestments < ActiveRecord::Migration[5.1]
  def change 
    add_column :investments, :likes, :integer, :default => 0
  end
end
