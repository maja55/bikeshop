Rails.application.routes.draw do
  devise_for :users

  resources :products, only: [:index, :show]
  resources :users, only: [:show]
  resources :profiles
  resources :orders
  resources :photos
  resources :lineitems

  root to: 'products#index'

end
