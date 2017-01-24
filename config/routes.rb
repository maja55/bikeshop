Rails.application.routes.draw do
  devise_for :users

  resources :products, only: [:index, :show]
  resources :users, only: [:show]
  resources :profiles, only: [:new, :edit, :create, :update]
  resources :orders do
    resources :lineitems
  end
  resources :photos
  resources :lineitems

  root to: 'products#index'

end
