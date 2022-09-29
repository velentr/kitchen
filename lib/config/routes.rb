# frozen_string_literal: true

Rails.application.routes.draw do
  root 'recipes#index'

  resources :recipes do
    post '/cooks', to: 'cooks#create'
  end
end
