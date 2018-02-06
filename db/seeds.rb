# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
  Asset.create(name: '2009 Toyota Corolla', value: 6805, user_id: 1) 
  CreditCard.create(provider: "Chase", balance: 6605, interest_rate: 5, user_id: 1)
  Investment.create(name: "Facebook Stock", value: 3500, user_id: 1) 
  Loan.create(remaining_balance: 37000, interest_rate: 10, user_id: 1) 
  RecurringPayment.create(source: "Chase Card Payment", status: 0, pay_date: Date.new(2018,2,11), pay_amount: 2500, credit_card_id: 1 )