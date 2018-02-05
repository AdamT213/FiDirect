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
  end 
  
  private

  def investment_params
    params.permit(:id, :name, :value, :user_id)
  end
end
