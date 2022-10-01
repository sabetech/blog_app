# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users
  devise_scope  :user do
    get 'users/sign_out' => 'devise/sessions#destroy'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: 'users#index' 
  resources :users, only: [:index, :show] do
    resources :posts, only: [:index, :show, :new, :create, :destroy]
  end
  resources :posts, only: [:index, :show] do
    resources :comments, only: [:new, :create, :destroy]
    resources :likes, only: :create
  end
end
