class NewsController < ApplicationController
  def create
    UserNews.create(news_params)
    redirect_to root_path
  end

  private 

  def news_params
    params.require(:user_news).permit(:post, :like)
  end
end
