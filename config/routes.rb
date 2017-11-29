Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  resources :user_news, only: [:create, :edit, :update, :destroy]
  resources :friend_list, only: [:create, :destroy]
  post 'user', to: 'main#create_user', as:'create'
  post 'user_list', to: 'user_list#user_list', as:'user_list'
  post 'comment/:id', to: 'comment#create', as:'comment'
  
 
  root 'main#index'
end
