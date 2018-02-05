class LoansController < ApplicationController
    def new
      @loan = Loan.new 
    end

  def create
    @loan = Loan.create(loan_params)
    render json: @loan, status: 201
  end

  def show
    @loan = Loan.find(params[:id]) 
    render json: @loan
  end

  def index
    @loans = Loan.all 
    render json @loans
  end 
  
  private

  def loan_params
    params.permit(:id, :remaining_balance, :interest_rate, :user_id)
  end
end
