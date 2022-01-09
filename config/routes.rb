require 'sidekiq/web'

Rails.application.routes.draw do
  draw :madmin
  authenticate :user, lambda { |u| u.admin? } do
    mount Sidekiq::Web => '/sidekiq'

    namespace :madmin do
      resources :impersonates do
        post :impersonate, on: :member
        post :stop_impersonating, on: :collection
      end
    end
  end

  authenticate :user do
    # get '/', rediect_to: '/dashboard'
    get '/dashboard', controller: 'dashboard', action: 'index', as: :dashboard
    resources :dashboard, only: [:index]
  end

  resources :events
  resources :notifications, only: [:index]
  resources :announcements, only: [:index]
  devise_for :users, controllers: { sessions: 'users/sessions', omniauth_callbacks: "users/omniauth_callbacks" }

  get '/privacy', to: 'home#privacy'
  get '/terms', to: 'home#terms'
  root to: 'home#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
