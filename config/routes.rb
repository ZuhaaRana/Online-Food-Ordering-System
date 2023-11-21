Rails.application.routes.draw do
  devise_for :app_users

  devise_scope :app_user do
    get "/app_users/sign_out" => "devise/sessions#destroy"
  end
  
  get 'place_order/order'
  get 'add_items/items'

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
