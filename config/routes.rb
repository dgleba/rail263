Rails.application.routes.draw do

  resources :rental_records
  resources :vehicles
  resources :customers
  resources :passengers
  resources :pasenger_lists
  resources :passengers
  resources :pasenger_lists
  resources :rental_records
  resources :vehicles
  resources :customers
  resources :passengers
  resources :pasenger_lists
  resources :passengers
#
  resources :pasenger_lists
  resources :passengers
  resources :jobs
  resources :projects
  resources :customers
  resources :rental_records
  resources :vehicles

  #administrate gem... 2016-06-08 David Gleba
  namespace :admin do
    resources :jobs
    resources :projects
    resources :pasenger_lists
    resources :passengers
    resources :rental_records
    resources :vehicles
    resources :customers
    resources :roles
    resources :users
    #root to: "customers#index"
    root to: "roles#index"
  end

  resources :roles
  resources :users

  mount RailsAdmin::Engine => '/radmin', as: 'rails_admin'


  get 'login' => 'user_sessions#new', as: :login
  post 'login' => 'user_sessions#create'
  post 'logout' => 'user_sessions#destroy', as: :logout

  root 'home#index'
end
