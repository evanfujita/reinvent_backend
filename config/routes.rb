Rails.application.routes.draw do

  resources :orders
  resources :vendors  
  resources :categories
  resources :ingredients
  resources :users

  post '/auth', to: 'auth#create'
  get '/current_user', to: 'auth#show'
  patch '/updateInventory', to: 'ingredients#updateInventory'
  get '/getIngredients', to: 'ingredients#renderIngredients'
  post '/sendOrder', to: 'orders#batch_order'
  patch 'acceptOrder', to: 'orders#accept_order'

end