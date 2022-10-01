Rails.application.routes.draw do
  resources :transactions
  devise_for :users
  get 'home/about'
  # root 'home#index'
  root 'transactions#index'
  # get 'home/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
