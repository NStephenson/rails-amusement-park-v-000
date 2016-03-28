Rails.application.routes.draw do

  resources :users
  resources :attractions

  root "attractions#index"

end