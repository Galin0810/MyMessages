class UserNewsController < ApplicationController
  before_action :set_news, only:[:edit, :update, :destroy]

  def create
    UserNews.create(news_params)
    redirect_to root_path  
  end

  def edit
  end
  
  
  def destroy
    @news= UserNews.find(params[:id])
    @news.destroy!
    redirect_to root_path , :notice => "Your new has been deleted"
  end
  
  def update 
    @news.update(news_params)
    redirect_to root_path
  end

  private 


  def news_params
    params.require(:user_news).permit(:post, :like)
  end

  def set_news
    @news = UserNews.find(params[:id])
  end
end
