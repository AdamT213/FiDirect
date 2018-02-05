Rails.application.routes.draw do
  devise_for :users
  resources :assets do 
    resources :recurring_payments
  end
  resources :investments do 
    resources :recurring_payments 
  end 
  resources :loans do
    resources :recurring_payments 
  end 
  resources :credit_cards do
    resources :recurring_payments 
  end
  resources :bank_accounts do 
    resources :recurring_payments
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
