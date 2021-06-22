Rails.application.routes.draw do

  resources :orders
  resources :vendors
  resources :component_ingredients
  resources :stations
  resources :categories
  resources :dish_components
  resources :dishes
  resources :components
  resources :ingredients
  resources :users

  post '/auth', to: 'auth#create'
  get '/current_user', to: 'auth#show'
  patch '/updateInventory', to: 'ingredients#updateInventory'

end
