Rails.application.routes.draw do


  get 'sessions/new'

  get 'static_pages/home'

  get 'users/index'

  get 'users/new'

  get 'users/show'

  resources :users

  root 'static_pages#home'

  get 'static_pages/secret'

  get 'login', to: "sessions#new"

  post "login", to: "sessions#create"

  delete "logout", to: "sessions#destroy"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
