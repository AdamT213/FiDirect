class BankAccountsController < ApplicationController 
    def new
    @account = Bank_Account.new 
  end

  def create
    @account = Bank_Account.create(bank_account_params)
    render json: @account, status: 201
  end

  def show
    @account = Bank_Account.find(params[:id]) 
    render json: @account
  end

  def index
    @accounts = Bank_Account.all 
    render json: @accounts
  end 
  
  private

  def bank_account_params
    params.permit(:id, :name, :balance, :user_id)
  end
end
