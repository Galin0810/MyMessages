class MainController < ApplicationController
  def index
    @news = UserNews.all
    @edit = UserNews.all
    @comment = Comment.all
    @user = User.all
    @friend_list = User.all
    @user_list = User.all
  end
  
  def destroy_user
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end

  
  private

  def user_params
    params.require(:user).permit(:name, :birthday, :sex, :email, :pasword)
  end

end
