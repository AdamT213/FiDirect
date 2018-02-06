class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable 
         
  has_many :bank_accounts 
  has_many :credit_cards
  has_many :investments 
  has_many :loans 
  has_many :assets 
  has_many :recurring_payments, through: :bank_accounts
  has_many :recurring_payments, through: :credit_cards
  has_many :recurring_payments, through: :investments
  has_many :recurring_payments, through: :loans
end
