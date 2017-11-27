class CommentController < ApplicationController
  def create
    @news = UserNews.find(params[:id])
    @news.comments.create(comment_params)
    redirect_to root_path
  end

  private 

  def comment_params
    params.require(:comments).permit(:title, :sub_comment)
  end

end
