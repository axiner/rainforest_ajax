Rails.application.routes.draw do

  resources :sessions, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :products do
    resources :reviews, only: [:show, :create, :destroy]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # Serve websocket cable requests in-process
  # mount ActionCable.server => '/cable'
end
