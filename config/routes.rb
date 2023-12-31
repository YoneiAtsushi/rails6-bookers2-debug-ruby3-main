Rails.application.routes.draw do
  
  devise_for :users

  resources :books
  resources :users, only: [:edit, :show, :index, :update]

  root to: "homes#top"
  get "/home/about" => "homes#about"
  
end