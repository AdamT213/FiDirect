class Loan < ApplicationRecord 
    belongs_to :user 
    has_many :reccuring_payments
end
