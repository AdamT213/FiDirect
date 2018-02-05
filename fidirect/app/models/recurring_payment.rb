class RecurringPayment < ApplicationRecord 
    belongs_to :bank_account 
    belongs_to :credit_card 
    belongs_to :investment 
    belongs_to :loan 
end
