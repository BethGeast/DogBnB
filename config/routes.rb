Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # get '/items', to: 'items#index'
  resources :items, except: %i[destroy] do
    resources :bookings, only: %i[new create]
    resources :favorites, only: %i[new create]
    resources :reviews, only: %i[new create show]
  end
  resources :bookings, only: %i[show index edit update]
  delete '/bookings/:id', to: 'bookings#destroy', as: :delete_booking
  resources :favorites, only: %i[destroy index]
  delete 'items/:id', to: 'items#destroy', as: :delete_item
end
