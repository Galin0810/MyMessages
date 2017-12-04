Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  resources :user_news, only: [:index, :create, :edit, :update, :destroy]
  resources :user_list, only: [:index, :create, :destroy]

  get 'messages/:friend_id', to: 'message#index', as:'messages'
  post 'message/:friend_id', to: 'message#create', as: 'message'

  post 'comment/:id', to: 'comment#create', as:'comment'
  
  get '/friends', to: 'friends#index', as: 'friends'
  post '/friends/:friend_id', to: 'friends#create', as: 'friend'
  delete '/friends/:friend_id', to: 'friends#destroy'
  
  root 'main#index'
end
