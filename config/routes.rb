Rails.application.routes.draw do
  root 'ingredients#index'

  get '/ingredient_categories', to: 'ingredient_categories#index'
  get '/ingredient_categories/:id', to: 'ingredient_categories#show'

  get '/ingredient_types', to: 'ingredient_types#index'
  get '/ingredient_types/:id', to: 'ingredient_types#show'

  get '/ingredients', to: 'ingredients#index'
end
