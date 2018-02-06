class RecurringPayment < ApplicationRecord
    belongs_to :bank_account
    belongs_to :credit_card
    belongs_to :investment
    belongs_to :loan

    def bank_account_name
        self.try(:bank_account).try(:name)
    end

  def bank_account_name=(name)
      binding.pry
    bank_account = BankAccount.find_by(name: name)
    if bank_account
      self.bank_account = bank_account
    end
  end

  def credit_card_provider
    self.try(:credit_card).try(:provider)
  end

  def credit_card_provider=(provider)
    credit_card = CreditCard.find_by(provider: provider)
    if credit_card
      self.credit_card = credit_card
    end
  end

  def investment_name
    self.try(:investment).try(:name)
  end

  def investment_name=(name)
    investment = Investment.find_by(name: name)
    if investment
      self.investment = investment
    end
  end

  def loan_name
    self.try(:loan).try(:name)
  end

  def loan_name=(name)
    loan = Loan.find_by(name: name)
    if loan
      self.loan = loan
    end
  end
end
