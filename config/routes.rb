Rails.application.routes.draw do
  root 'ingredients#index'

  get '/ingredient_categories', to: 'ingredient_categories#index'
  get '/ingredient_types', to: 'ingredient_types#index'
  get '/ingredients', to: 'ingredients#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
