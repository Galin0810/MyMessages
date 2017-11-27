class MainController < ApplicationController
  def index
    @news = UserNews.all
    @comment = Comment.all
  end
end
