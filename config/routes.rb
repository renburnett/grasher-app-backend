Rails.application.routes.draw do
  root 'application#authorized'
  
  post 'user_auth', to: 'user_auth#create'
  post 'users/create', to: 'users#create'
  patch 'users/:id/update', to: 'users#update'
  get 'users/:id/fridges', to: 'users#fridges'
  
  get 'fridges/:id/food_items', to: 'fridges#food_items'

  resources :food_items, only: [:show, :create, :update, :destroy]
  resources :fridges, only: [:show, :create, :update, :destroy]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

