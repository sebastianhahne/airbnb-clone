Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get 'dashboard', to: 'pages#dashboard', as: :dashboard

  resources :instruments do
    resources :bookings, only: [:create, :show, :update, :index]
  end
  resources :bookings, only: [:destroy]
end


# original routes
#   resources :instruments do
#     resources :bookings, only: [:create]
#   end
#   resources :bookings, only: [:index, :show, :destroy, :update]
