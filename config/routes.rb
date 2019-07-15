Rails.application.routes.draw do
  devise_for :users

  resources :bookings, only: [:new, :create, :update, :edit]
  root to: 'pages#home'

  resources :paintings
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
