Rails.application.routes.draw do
  root 'application#authorized'
  
  get 'users/:id/fridges', to: 'users#fridges'
  get 'fridges/:id/food_items', to: 'fridges#food_items'
  get 'food_items/:id/check_if_expiring', to: 'food_items#check_if_expiring'

  post 'user_auth', to: 'user_auth#create'
  post 'users/create', to: 'users#create'
  post 'food_items/create', to: 'food_items#create'
  post 'fridges/create', to: 'fridges#create'

  patch 'users/:id/update', to: 'users#update'
  patch 'food_items/:id/update', to: 'food_items#update'

  delete 'food_items/:id/delete', to: 'food_items#delete'
  delete 'fridges/:id/delete', to: 'fridges#delete'

  resources :food_items, only: [:show, :create, :update, :destroy]
  resources :fridges, only: [:show, :create, :update, :destroy]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

