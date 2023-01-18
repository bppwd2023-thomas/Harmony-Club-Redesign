Rails.application.routes.draw do
  get 'control_panel/index'
  devise_for :users
  get 'site/home'
  get 'control_panel/index'
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
