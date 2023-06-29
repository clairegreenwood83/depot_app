Rails.application.routes.draw do
  get 'support_requests/index'
  get 'admin' => 'admin#index'
  controller :sessions do
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
  get 'sessions/create'
  get 'sessions/destroy'

  
  resources :support_requests, only: %i[index update]
 
  resources :users
  resources :orders
  resources :line_items do
    member do
      patch :decrease_quantity
    end 
  end
  resource :cart, only: [:show, :create, :update, :destroy]
  root 'store#index', as: 'store_index', via: :all
  resources :products do 
    get :who_bought, on: :member
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

end
