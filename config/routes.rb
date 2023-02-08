Rails.application.routes.draw do
  devise_for :users
  root to: 'topics#index'
  resources :topics, only: [:index, :create, :edit ,:update, :destroy]
end
