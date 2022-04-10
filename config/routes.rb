Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'drinks#index'

  get 'drinks', to: 'drinks#index'
  get '/drinks/:id', to: 'drinks#show'
end
