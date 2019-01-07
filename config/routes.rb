# frozen_string_literal: true

Rails.application.routes.draw do
  # get 'profiles/show'
  devise_for :users
  resources :posts
  # map.resources :friendships

  # root 'posts#index', as: 'home'
  root 'profiles#show', as: 'home'
  get ':email', to: 'profiles#show', as: :profile
  get 'users/all', to: 'users#index'

  resources :posts do
    resources :comments
  end
end
