Rails.application.routes.draw do
  
  devise_for :users, :controllers => {registrations: 'registrations' }
  resources :tweeets
  resources :users do
    resources :friendships, only: [:create]
  end
    resources :friendships, only: [:destroy]

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "tweeets#index"
  get "about", to: "about#index"
  get "home", to:"home#index"
  get "user", to: "user#index"
  put '/tweeet/:id/like', to: 'tweeets#like', as: 'like'
end
