# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users, path: '',
                     path_names: { sign_in: 'login', sign_out: 'logout', registration: 'register', sign_up: 'signup' }

  get 'up' => 'rails/health#show', as: :rails_health_check
end
