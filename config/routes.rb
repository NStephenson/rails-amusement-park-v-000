Rails.application.routes.draw do

  resources :users
  resources :attractions
  resources :sessions, only: [:create, :destroy]
  resources :rides, only: :create

  get '/signin', to: 'sessions#new'

  root "application#index"

end