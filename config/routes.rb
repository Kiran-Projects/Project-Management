# frozen_string_literal: true

Rails.application.routes.draw do
  resources :clients
  resources :projects
  devise_for :users
  root to: 'home#index'
end
