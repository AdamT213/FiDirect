class InvestmentsController < ApplicationController
    def new
      @investment = Investment.new 
    end

  def create
    @investment = Investment.create(investment_params)
    render json: @investment, status: 201
  end

  def show
    @investment = Investment.find(params[:id]) 
    render json: @investment
  end

  def index
    @investments = Investment.all 
    render json: @investments
  end 
  
  private

  def investment_params
    params.permit(:id, :name, :value, :user_id, recurring_payments_attributes: [:source, :status, :pay_amount, :pay_date, :duration])
  end
end
