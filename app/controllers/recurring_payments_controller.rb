class RecurringPaymentsController < ApplicationController 
    def new
      @payment = RecurringPayment.new
    end

  def create
    @payment = RecurringPayment.create(recurring_payment_params)
    if params[:bank_account_id]
       @payment.bank_account = BankAccount.find[:bank_account_id]
    elsif params[:credit_card_id] 
         @payment.credit_card = CreditCard.find[:credit_card_id] 
    elsif params[:investment_id] 
         @payment.investment = Investment.find[:investment_id] 
    elsif params[:loan_id] 
        @payment.loan = Loan.find[:loan_id]
    end 
    render json: @payment
  end

  def index
    @payments = RecurringPayment.all 
    render json: @payments
  end

  def show
    @payment = RecurringPayment.find(params[:id]) 
    render json: @payment
  end

  private

  def recurring_payment_params
    params.permit(:id, :source, :status, :pay_amount, :pay_date, :duration, :bank_account_name, :credit_card_provider, :investment_name, :loan_name )
  end
end
