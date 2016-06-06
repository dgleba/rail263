Rails.application.routes.draw do
  resources :customers
  resources :users
  get 'login' => 'user_sessions#new', as: :login
  post 'login' => 'user_sessions#create'
  post 'logout' => 'user_sessions#destroy', as: :logout

  root 'home#index'
end
