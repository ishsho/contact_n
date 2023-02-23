Rails.application.routes.draw do
  get 'messages/index'
  devise_for :users
  root to: 'topics#index'

  resources :topics, only: [:index, :create, :edit ,:update, :destroy] do
    resources :contents, only: [:index, :new, :create, :edit, :update, :destroy]
  end

  resources :messages, only: [:index]
end
