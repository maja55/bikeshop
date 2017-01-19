Rails.application.routes.draw do
  devise_for :users

  resources :products, only: [:index, :show]
  resources :users, only: [:show]
  resources :profiles, only: [:new, :edit, :create, :update]
  resources :orders
  resources :lineitems

  get 'pages/home'
  root to: 'pages#home'

end
