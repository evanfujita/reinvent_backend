Rails.application.routes.draw do

  resources :component_ingredients
  resources :stations
  resources :categories
  resources :dish_components
  resources :dishes
  resources :components
  resources :ingredients
  resources :users

end
