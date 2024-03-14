Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # get '/items', to: 'items#index'
  resources :items do
    resources :reviews, only: [:new, :create]
  end
end
