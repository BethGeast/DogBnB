Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # get '/items', to: 'items#index'
  resources :items do
    resources :bookings, only: %i[new create]
    resources :favorites, only: %i[new create]
  end
  resources :bookings, only: %i[show index edit update]
  delete '/bookings/:id', to: 'bookings#destroy', as: :delete_booking
  resources :favorites, only: %i[destroy index]
  # post '/items/:item_id/favorites', to: 'favorites#create', as: :item_favorites
end
