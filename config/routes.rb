# frozen_string_literal: true

Rails.application.routes.draw do
  get '/auth/:provider/callback', to: 'sessions#create'
  resources :mylists, only: :show
end
