Rails.application.routes.draw do
  devise_for :users

  resources :products, only: [:index, :show]
  resources :users, only: [:show]
  resources :profiles
  resources :orders

  get 'pages/home'
  root to: 'pages#home'

end
