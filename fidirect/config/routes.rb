Rails.application.routes.draw do
  resources :bank_accounts
  resources :reccuring_payments
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
