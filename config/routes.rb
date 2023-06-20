Rails.application.routes.draw do
  resources :event_artists, only: %i[index show new create edit update destroy]
  resources :reviews
  resources :events, only: %i[index show new create edit update destroy]
  resources :venues, only: %i[index show new create edit update destroy]
  resources :artists
  devise_for :users
  root to: "pages#home"
  # get '/venue', to: 'venues#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
