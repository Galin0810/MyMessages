class FriendsController < ApplicationController

  def create
    current_user.friends.create(friend_id: params[:friend_id])
    redirect_to user_list_index_path
  end

  def destroy
    current_user.friends.where(friend_id: params[:friend_id]).destroy
    redirect_to user_list_index_path , :notice => "Your new has been deleted"
  end
    
end
