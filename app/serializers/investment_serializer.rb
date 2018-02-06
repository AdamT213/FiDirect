class InvestmentSerializer < ActiveModel::Serializer
  attributes :id, :name, :value, :user_id 
  has_many :recurring_payments
end
