class LoanSerializer < ActiveModel::Serializer
  attributes :id, :interest_rate, :remaining_balance, :user_id
end
