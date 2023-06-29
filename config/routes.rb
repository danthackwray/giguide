Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :artists, only: %i[show index new create edit update delete]
  resources :reviews, only: %i[index show new create edit update destroy]
  resources :event_artists, only: %i[index show new create edit update delete]
  resources :events do
    resources :venues, only: [:index, :new, :create]
    resources :artists, only: [:index, :new, :create]
  end
  resources :venues, only: %i[index show new create edit update delete]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
