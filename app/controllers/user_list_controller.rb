class UserListController < ApplicationController

  def index
    @user = User.where(:id.ne => current_user.id)
  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to users_url
  end
  
end
