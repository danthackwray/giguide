Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :artists, only: %i[show index new create edit update destroy]
  resources :reviews, only: %i[index show new create edit update destroy]
  resources :event_artists, only: %i[index show new create edit update destroy]
  resources :events, only: %i[index show new create edit update destroy]
  resources :venues, only: %i[index show new create edit update destroy]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
