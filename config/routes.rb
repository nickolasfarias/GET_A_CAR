Rails.application.routes.draw do
  devise_for :users
  root to: 'cars#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cars do
    resources :bookings, only: %i[index show new create]
  end
  resources :users, only: %i[show]
  resources :bookings, only: %i[destroy]
end
