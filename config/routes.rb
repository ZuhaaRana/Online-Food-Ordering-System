Rails.application.routes.draw do
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
end
