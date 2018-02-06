class CreditCardSerializer < ActiveModel::Serializer
  attributes :id, :provider, :balance, :interest_rate, :user_id 
  has_many :recurring_payments
end
