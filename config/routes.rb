Rails.application.routes.draw do
  get 'epicenter/feed'
  get 'epicenter/show_user'
  get 'epicenter/now_following'
  get 'epicenter/unfollow'
  devise_for :users, :controllers => {registrations: 'registrations' }
  resources :tweeets
  resources :friendships

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root "tweeets#index"
  get "about", to: "about#index"
  get "home", to:"home#index"
end
