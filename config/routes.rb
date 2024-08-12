Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  mount HealthBit.rack => '/health'

  devise_for :users

  root to: 'pages#index'

  get ':path', to: 'pages#index', as: :page
end
