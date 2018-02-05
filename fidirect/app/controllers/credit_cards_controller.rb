class CreditCardsController < ApplicationController
    def new
      @account = Credit_Card.new 
    end

  def create
    @account = Credit_Card.create(credit_card_params)
    render json: @account, status: 201
  end

  def show
    @account = Credit_Card.find(params[:id]) 
    render json: @account
  end

  def index
    @accounts = Credit_Card.all
    render json: @account
  end 
  
  private

  def bank_account_params
    params.permit(:name, :balance, :user_id)
  end
end
