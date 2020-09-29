Rails.application.routes.draw do
  # resources :favorites
  # resources :paintings
  # resources :painters
  # resources :users

  #routes for user
  post "/login", to: "users#handle_login"
  get "/users/:id", to: "users#show"

  #routes for paintings controller
  get "/paintings", to: "paintings#index"

  #routes for painters controller 
  get "/painters", to: "painters#index"
  get "/painters/:id", to: "painters#show"

  #routes for favorites controller 
  get "/favorites", to: "favorites#index"
  get "/favorites/:id", to: "favorites#show"
  post "/favorites", to: "favorites#create"
  delete "/favorites/:id", to: "favorites#delete"
end
