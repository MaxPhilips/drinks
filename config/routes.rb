Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'drinks#index'

  resources :drinks

  resources :drink_types

  resources :services

  resources :drinkwares

  resources :ingredients

  resources :ingredient_categories

  resources :ingredient_types

  resources :quantities

  resources :units
end
