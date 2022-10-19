Rails.application.routes.draw do
  get 'likes/create'
  get 'likes/delete'
  get 'likes/count'
  resources :arts
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "arts#index"
end
