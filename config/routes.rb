Rails.application.routes.draw do
  resources :orders
  resources :line_items
  resource :cart, only: [:show, :create, :update, :destroy]
  root 'store#index', as: 'store_index'
  resources :products
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
