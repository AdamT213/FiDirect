class Loan < ApplicationRecord 
    belongs_to :user 
    has_many :recurring_payments 
    accepts_nested_attributes_for :recurring_payments
end
