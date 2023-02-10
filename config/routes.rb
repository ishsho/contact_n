Rails.application.routes.draw do
  devise_for :users
  root to: 'topics#index'

  resources :topics, only: [:index, :create, :edit ,:update, :destroy] do
    resources :contents, only: [:index, :new, :create, :edit, :update, :destroy]
  end
end
