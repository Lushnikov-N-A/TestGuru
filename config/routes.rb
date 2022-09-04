# frozen_string_literal: true

Rails.application.routes.draw do
  get 'users/new'
  root to: 'tests#index'

  get :signup, to: 'users#new'
  get :login, to: 'sessions#new'
  delete :logout, to: 'sessions#destroy'

  resources :sessions, only: :create
  resources :users, only: :create

  resources :tests do
    resources :questions, shallow: true, except: :index do
      resources :answers, shallow: true, except: :index
    end

    post :start, on: :member
  end

  resources :test_passings, only: %i[show update] do
    member do
      get :result
    end
  end
end
