class UserListController < ApplicationController

  def index
    @user = User.where(:id.ne =>current_user.id)
    @friends = current_user.friend
  end

  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end
  
end
