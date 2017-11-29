class FriendsController < ApplicationController

  def create
    current_user.friends.create(id: params[:friend_id])
    redirect_to root_path  
  end

  def destroy
    @friend= Friend.find(params[:friend_id])
    @friend.destroy!
    redirect_to root_path , :notice => "Your new has been deleted"
  end
end
