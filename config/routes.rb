# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations'
  }
  
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

  namespace :api do 
    namespace :v1 do
      resources :users, only: [index] do
        resources :posts, only: [index, show] do
          resources :comments, only: [new, create] do
          end
        end
      end
    end
  end

end
