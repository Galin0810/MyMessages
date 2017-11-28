class FriendListController < ApplicationController
  
  def show
    @friend_list = FriendList.find(params[:id])
  end

  def show_all
    @friend_list = FriendList.all
  end
  
  def add_friend
   
    redirect_to root_path
  end

  def destroy_friend_list
    User.find(params[:id]).destroy
    flash[:success] = "Friend deleted"
    redirect_to friend_list_url
  end

end
