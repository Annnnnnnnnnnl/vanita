Rails.application.routes.draw do

  devise_for :users
  root 'pages#home'

  resources :packages
  resources :users, only: [:show]


  resources :packages do
    resources :tasks, only: [:create]
  end

  resources :tasks, only: [:show]


end
