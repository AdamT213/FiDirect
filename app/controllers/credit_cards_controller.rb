class CreditCardsController < ApplicationController
    def new
      @account = CreditCard.new 
    end

  def create
    @account = CreditCard.create(credit_card_params)
    render json: @account, status: 201
  end

  def show
    @account = CreditCard.find(params[:id]) 
    render json: @account
  end

  def index
    @credit_cards = CreditCard.all
    render json: @credit_cards
  end 
  
  private

  def bank_account_params
    params.permit(:name, :balance, :user_id, recurring_payments_attributes: [:source, :status, :pay_amount, :pay_date, :duration])
  end
end
