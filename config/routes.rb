Rails.application.routes.draw do
  resources :math_ladders
  resources :practices
  resources :instruments

  mount Upmin::Engine => '/admin'
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
