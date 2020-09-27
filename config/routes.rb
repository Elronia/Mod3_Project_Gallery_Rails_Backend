Rails.application.routes.draw do
  # resources :favorites
  # resources :paintings
  # resources :painters
  # resources :users

  #routes for Painting controller
  get "/paintings", to: "paintings#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
