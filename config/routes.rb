Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  resources :user_news, only: [:create, :edit, :update, :destroy]
 
  post 'user', to: 'main#create_user', as:'create'
  post 'user_list', to: 'user_list#user_list', as:'user_list'
  post 'comment/:id', to: 'comment#create', as:'comment'
  post '/friends/:friend_id', to: 'friends#create', as: 'friend'
  
 
  root 'main#index'
end
