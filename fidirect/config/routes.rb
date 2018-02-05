Rails.application.routes.draw do
  resources :assets
  resources :investments
  resources :loans
  resources :credit_cards
  resources :bank_accounts
  resources :recurring_payments
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
