Rails.application.routes.draw do
  post 'news', to: 'news#create'
  post 'comment/:id', to: 'comment#create', as:'comment'
 
  root 'main#index'
end
