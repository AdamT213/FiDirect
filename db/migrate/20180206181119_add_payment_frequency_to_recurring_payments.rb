class AddPaymentFrequencyToRecurringPayments < ActiveRecord::Migration[5.1]
  def change
    add_column :recurring_payments, :payment_frequency, :integer
  end
end
