Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :owners 

  resources :houses

  resources :locators

  resources :contracts do
    get 'finish_contract', to: 'contracts#finish_contract'
    resources :installments, only: [ :index ]   
  end 

  get 'change_payment_status', to: 'installments#change_payment_status'

end
