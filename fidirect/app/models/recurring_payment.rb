class RecurringPayment < ApplicationRecord 
    belongs_to :bank_account 
    belongs_to :credit_card 
    belongs_to :investment 
    belongs_to :loan  
    
    def bank_account_name 
        self.try(:bank_account).try(:name)
    end

  def bank_account_name=(name)
    bank_account = BankAccount.find_or_create_by(name: name)
    self.bank_account = bank_account 
  end 
  
  def credit_card_provider
    self.try(:credit_card).try(:provider)
  end

  def credit_card_provider=(provider)
    credit_card = CreditCard.find_or_create_by(provider: provider)
    self.credit_card = credit_card
  end  
  
  def investment_name
    self.try(:investment).try(:name)
  end

  def investment_name=(name)
    investment = Investment.find_or_create_by(name: name)
    self.investment = investment
  end   
  
  def loan_name
    self.try(:loan).try(:name)
  end

  def loan_name=(name)
    loan = Loan.find_or_create_by(name: name)
    self.loan = loan
  end   
end
