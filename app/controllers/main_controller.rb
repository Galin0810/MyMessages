class MainController < ApplicationController
  def index
    @news = UserNews.order_by(created_at: :desc)
    @message = Message.order_by(created_at: :desc)
  end
end
