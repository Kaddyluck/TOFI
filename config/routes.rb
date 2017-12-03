Rails.application.routes.draw do
  root 'fonds#index'
  resources :fonds
end
