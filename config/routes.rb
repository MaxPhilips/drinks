Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'drinks#index'

  resources :drinks

  resources :drink_types

  resources :services

  resources :drinkwares

  resources :ingredient_categories

  resources :ingredients

  resources :brands

  resources :quantities

  resources :units
end
