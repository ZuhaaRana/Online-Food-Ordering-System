Rails.application.routes.draw do
  get 'add_items/items'
  devise_for :app_users, controllers: 
  {
    sessions: 'app_users/sessions',
    registrations: 'app_users/registrations'
    # Other Devise controllers as needed
  }
  
  resources :deal_deal_items
  resources :order_order_details
  resources :menu_item_carts
  resources :menu_item_addons

  root 'welcome#index'
  get 'dashboard/display'
  get '/search', to: 'search#search', as: 'search'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  
  # Defines the root path route ("/")
  # root "articles#index"

  # devise_scope :app_user do
  #   get 'signup', to: 'app_users/registrations#new', as: :app_user_registration
  #   post 'signup', to: 'app_users/registrations#create', as: :app_user_registration
  # end
  
end
