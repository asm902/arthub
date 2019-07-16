Rails.application.routes.draw do
  devise_for :users

  get "dashboard", to: 'pages#dashboard', as: "dashboard"

  root to: 'pages#home'

  resources :paintings do
    resources :bookings, only: [:new, :create, :update, :edit]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  end
end
