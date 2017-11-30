class UserListController < ApplicationController

  def user_list
    @user = User.where(:id.ne =>current_user.id)
  end

  def destroy_user
    User.find(params[:id]).destroy
    flash[:success] = "User deleted"
    redirect_to users_url
  end
  
end
