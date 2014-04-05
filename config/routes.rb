EmAuthServer::Application.routes.draw do
  resources :posts

  use_doorkeeper

  root :to => "home#index"

  devise_for :users, controllers: { sessions: "sessions" }
  #devise_for :users, controllers: { sessions: "sessions", registrations: "registrations" }

  resources :users
end