class FriendsController < ApplicationController

  def index
    @friends = current_user.friends
  end

  def create
    current_user.friends.create(friend_id: params[:friend_id])
    User.find(params[:friend_id]).friends.create(friend_id: current_user.id)
    redirect_to user_list_index_path
  end

  def destroy
    current_user.friends.where(friend_id: params[:friend_id]).destroy
    User.find(params[:friend_id]).friends.where(friend_id: current_user.id)
    redirect_to user_list_index_path
  end
    
end
