Rails.application.routes.draw do
  resources :deal_deal_items
  resources :order_order_details
  resources :menu_item_carts
  resources :menu_item_addons
  root 'welcome#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
