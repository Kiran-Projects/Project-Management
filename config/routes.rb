# frozen_string_literal: true

Rails.application.routes.draw do
  resources :work_parties
  resources :work_types
  resources :contacts
  resources :clients
  resources :projects
  devise_for :users
  root to: 'home#index'
end
