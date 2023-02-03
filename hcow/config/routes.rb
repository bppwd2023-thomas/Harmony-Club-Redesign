Rails.application.routes.draw do
  namespace :web do
    get 'photos/index'
    get 'photos/show'
    get 'events/calendar'
    get 'events/show'
  end
  mount PdfjsViewer::Rails::Engine => "/pdfjs", as: 'pdfjs'
  get 'calendar/index'
  get 'control_panel/index'
  get 'simple_calendar/month_calendar'
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
