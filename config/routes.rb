Rails.application.routes.draw do
  devise_for :users
  post 'user', to: 'main#create_user', as:'create'
  post 'news', to: 'news#create'
  post 'comment/:id', to: 'comment#create', as:'comment'
  post 'comment/sub_comments/:id', to: 'comment#create_sub_comment', as:'sub_comments'
 
  root 'main#index'
end
