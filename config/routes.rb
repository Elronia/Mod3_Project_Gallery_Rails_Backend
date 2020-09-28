Rails.application.routes.draw do
  # resources :favorites
  # resources :paintings
  # resources :painters
  # resources :users

  #routes for paintings controller
  get "/paintings", to: "paintings#index"
  #routes for painters controller 
  get "/painters", to: "painters#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
