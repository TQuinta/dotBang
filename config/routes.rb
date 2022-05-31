Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # resources :


end



# resources :chef_profiles, only: [:show, :new, :create, :index] do
#   resources :bookings, only: [:new, :create]
# end
# resources :bookings, only: [:index]
# get 'mybookings', to: "bookings#my_bookings", as: :my_bookings

# resources :bookings, only: :show do
#   patch 'accept', to: "bookings#accept"
#   patch 'reject', to: "bookings#reject"
# end
