Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'drinks#index'

  resources :drinks

  resources :services

  resources :drinkwares

  resources :drink_categories

  resources :ingredients

  resources :ingredient_categories

  resources :ingredient_types

  resources :quantities
end
