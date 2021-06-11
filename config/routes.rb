Rails.application.routes.draw do
  
  # get 'messages', to: 'messages#create'
  devise_for :users, :controllers => {registrations: 'registrations' }
  resources :tweeets
  resources :users do
    resources :friendships, only: [:create]
  end
    resources :friendships, only: [:destroy]
  resources :conversations do
      resources :messages
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "tweeets#index"
  get "about", to: "about#index"
  get "home", to:"home#index"
  get "user", to: "user#index"
  put '/tweeet/:id/like', to: 'tweeets#like', as: 'like'
  # delete '/messages/:id', to: 'messages#destroy'
end
