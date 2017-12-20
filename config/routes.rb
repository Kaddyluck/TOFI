Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root 'fonds#index'
  resources :users
  resources :fonds, only: [:show, :index]

  namespace :admin do
    resources :fonds, except: [:show, :index]
  end
end
