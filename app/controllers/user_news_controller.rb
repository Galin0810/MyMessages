class UserNewsController < ApplicationController
  before_action :set_news, only:[:edit, :update, :destroy]

  def index
    @news = current_user.news.all
  end

  def create
    current_user.user_news.create(news_params)
    redirect_to root_path
  end

  def edit
  end

  def update 
    @news.update(news_params)
    redirect_to root_path
  end
  
  def destroy
    @news.destroy!
    redirect_to root_path , :notice => "Your new has been deleted"
  end
  
  private 

  def news_params
    params.require(:user_news).permit(:post, :like)
  end

  def set_news
    @news = current_user.news.find(params[:id])
  end
end
