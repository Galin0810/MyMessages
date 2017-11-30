class CommentController < ApplicationController
  def create
    current_user.comments.create(comment_params)

    redirect_to root_path
  end
  
  private 

  def comment_params
    params.require(:comments).permit(:title, :user_news_id)
  end
  
end
