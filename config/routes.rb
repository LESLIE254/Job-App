Rails.application.routes.draw do
  resources :applications
  resources :jobs
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get "/me", to: "users#show"
  post "/login", to: "sessions#create"
  post "/signup", to: "users#create"
end
