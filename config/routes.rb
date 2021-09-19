Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  resources :tasks
  resources :bringings
  resources :users
  resources :subjects
  resources :today
  delete :bringings, to: 'bringings#destroy_all'
end
