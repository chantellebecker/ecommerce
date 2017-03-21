Rails.application.routes.draw do
  devise_for :users
  resources :products

  root 'homes#index'
  get 'carts/:id' => 'carts#show', as: :cart
  post 'carts' => 'carts#index'
  post 'line_items' => 'products#line_item_create'
  post 'order_complete' => 'carts#order_complete'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
