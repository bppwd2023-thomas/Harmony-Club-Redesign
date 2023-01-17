Rails.application.routes.draw do
  devise_for :users
  get 'site/home'
  resources :sponsors
  resources :photos
  resources :albums
  resources :events
  resources :pages
  resources :sections
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "site#home"
end
