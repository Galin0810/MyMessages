class UserListController < ApplicationController

  def user_list
    @user = User.all
  end

  def destroy_user
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end
  
end
