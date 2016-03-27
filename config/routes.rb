Rails.application.routes.draw do

  devise_for :users
  resources :users
  resources :attractions

  root "attractions#index"

end