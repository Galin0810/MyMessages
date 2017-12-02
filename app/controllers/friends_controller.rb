class FriendsController < ApplicationController

  def create
    current_user.friend.create
    redirect_to user_list_index_path
  end

  def destroy
    current_user.friend.destroy
    redirect_to user_list_index_path , :notice => "Your new has been deleted"
  end
    
end
