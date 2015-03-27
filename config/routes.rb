Rails.application.routes.draw do
  resources :categories
  resources :comments
  resources :tracks
  root to: 'tracks#index'
  devise_for :users
  resources :users
end
