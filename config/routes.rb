Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  post '/restaurant_pizzas', to: 'restaurant_pizzas#create'
  resources :pizzas, only: [:index]
  resources :restaurants, only: [:index, :show, :destroy]
end
