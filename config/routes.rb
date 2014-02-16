EmAuthServer::Application.routes.draw do

  use_doorkeeper

  root :to => "home#index"

  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users
end