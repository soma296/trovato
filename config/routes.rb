Rails.application.routes.draw do
  get 'today/index'
  devise_for :users
  root to: "home#index"
  resources :tasks
  resources :bringings
  resources :users
  delete :bringings, to: 'bringings#destroy_all'
end
