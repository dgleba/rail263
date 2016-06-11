Rails.application.routes.draw do

  resources :customers
  resources :customers
  resources :customers
  resources :customers
  resources :customers
  resources :customers
  resources :customers
  resources :customers
  resources :customers
  resources :customers
  resources :customers
  resources :customers
  resources :customers
  resources :customers
  resources :customers
  resources :customers
  resources :customers
  resources :customers
  resources :customers
  resources :customers
  resources :customers
  resources :passengers
  resources :customers
  resources :customers
  resources :customers
  resources :customers
  resources :customers
  resources :passengers
  resources :jobs
  resources :projects
  resources :customers
  resources :rental_records
  resources :vehicles
  #administrate gem... 2016-06-08 David Gleba
  namespace :admin do
    resources :customers
    resources :roles
    resources :users
    #root to: "customers#index"
    root to: "roles#index"
  end

  resources :roles
  resources :users

  mount RailsAdmin::Engine => '/radmin', as: 'rails_admin'

  resources :customers

  get 'login' => 'user_sessions#new', as: :login
  post 'login' => 'user_sessions#create'
  post 'logout' => 'user_sessions#destroy', as: :logout

  root 'home#index'
end
