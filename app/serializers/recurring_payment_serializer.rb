class RecurringPaymentSerializer < ActiveModel::Serializer
  attributes :id, :source, :status, :pay_amount, :pay_date, :duration 
  belongs_to :bank_account
  belongs_to :loan 
  belongs_to :credit_card 
  belongs_to :investment
end
