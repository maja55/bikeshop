Rails.application.routes.draw do
  devise_for :users

  resources :products, only: [:index, :show]
  resources :users, only: [:show]
  resources :profiles, only: [:new, :edit, :create, :update, :show]
  resources :orders do
    resources :lineitems
  end
  resources :photos
  resources :lineitems do
    collection do
        get :clearcart
    end
  end

  root to: 'products#index'
  get 'pages/home'

end
