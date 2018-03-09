class InvestmentSerializer < ActiveModel::Serializer
  attributes :id, :name, :value, :likes, :user_id 
  has_many :recurring_payments
end
