class BankAccountsController < ApplicationController 
    def new
    @account = BankAccount.new 
  end

  def create
    @account = BankAccount.create(bank_account_params)
    render json: @account, status: 201
  end

  def show
    @account = BankAccount.find(params[:id]) 
    render json: @account
  end

  def index
    @accounts = BankAccount.all 
    render json: @accounts
  end 
  
  private

  def bank_account_params
    params.permit(:id, :name, :balance, :user_id, recurring_payments_attributes: [:source, :status, :pay_amount, :pay_date, :duration])
  end
end
