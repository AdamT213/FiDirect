class BankAccountSerializer < ActiveModel::Serializer
  attributes :id, :name, :balance, :user_id 
  has_many :recurring_payments
end
