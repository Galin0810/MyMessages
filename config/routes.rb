Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  resources :user_news, only: [:index, :create, :edit, :update, :destroy]
  resources :user_list, only: [:index, :destroy]
 
  
  post 'comment/:id', to: 'comment#create', as:'comment'
  post '/friends/:friend_id', to: 'friends#create', as: 'friend'
  delete '/friends/:friend_id', to: 'friends#destroy'
  
  root 'main#index'
end
