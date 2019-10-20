# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'

  resources :questions do
    resources :answers, only: %i[show new create destroy update edit]
  end

  resources :answers, only: [:index]
end
