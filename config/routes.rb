Rails.application.routes.draw do
  resources :images
  resources :users
  resources :sessions, only: [:new, :create]
end
