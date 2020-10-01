Rails.application.routes.draw do
  # resources :favorites
  # resources :paintings
  # resources :painters
  # resources :users

  #routes for user
  get "/users", to: "users#index"
  post "/users", to: "users#create"
  post "/login", to: "users#handle_login"
  get "/users/:id", to: "users#show"
  patch "users/:id", to: "users#update"

  #routes for paintings controller
  get "/paintings", to: "paintings#index"
  get "/paintings/:id", to: "paintings#show"

  #routes for painters controller 
  get "/painters", to: "painters#index"
  get "/painters/:id", to: "painters#show"

  #routes for favorites controller 
  get "/favorites", to: "favorites#index"
  get "/favorites/:id", to: "favorites#show"
  post "/favorites", to: "favorites#create"
  delete "/favorites/:id", to: "favorites#delete"
end
