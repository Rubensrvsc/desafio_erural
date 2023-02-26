Rails.application.routes.draw do
  get 'room/index', to: 'room#index'
  get 'room/show/:id', to: 'room#show', as: 'show_room'
  post 'room/create', to: 'room#create'
  get 'room/new', to: 'room#new'
  post 'room/invited', to: 'room#invited'
  get 'room_view_movie', to: 'room#go_room_movie'
  post 'movie', to: 'room#movie', as: 'movie'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "home#index"
end
