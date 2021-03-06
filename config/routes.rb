Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root 'fonds#index'
  resources :users do
    post :add_money
  end

  resources :tags, only: [:show]


  resources :fonds, only: [:show, :index] do
    put :add_money
  end


  namespace :admin do
    resources :fonds, except: [:show, :index]
  end
end
