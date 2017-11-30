class MainController < ApplicationController
  def index
    @news = UserNews.all
  end
end
