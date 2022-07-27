Rails.application.routes.draw do
  resources :wants
  devise_for :users
  resources :users
  resources :wants
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root 'users#index'
end
 
