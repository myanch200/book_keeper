# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  get 'up' => 'rails/health#show', as: :rails_health_check

  authenticate :user, ->(user) { user.developer? } do
    mount PgHero::Engine, at: 'pghero'
  end
end
