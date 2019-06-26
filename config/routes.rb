Rails.application.routes.draw do
  # devise routes
  devise_for :users

  # root route
  root 'rooms#index'

  # resources
  resources :rooms
  resources :messages
end
