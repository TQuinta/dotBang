Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :posts, only: %i[new create show update index] do
    member do
      patch :upvote
    end
  end
  resources :profiles, only: %i[show new create]
  resources :bookmarks, only: %i[index]
  get '/chatrooms', to: "pages#chatrooms"
end
