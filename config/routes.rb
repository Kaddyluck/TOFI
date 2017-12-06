Rails.application.routes.draw do
  devise_for :users
  root 'fonds#index'
  resources :fonds
end
