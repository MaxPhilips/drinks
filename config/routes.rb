Rails.application.routes.draw do
  root 'application#home'

  resources :ingredient_categories
  resources :ingredient_types
  resources :ingredients
end
