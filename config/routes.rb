Rails.application.routes.draw do
  devise_for :users
  root 'fonds#index'
  resources :fonds, only: [:show, :index]

  namespace :admin do
    resources :fonds, except: [:show, :index]
  end
end
