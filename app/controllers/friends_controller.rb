class FriendsController < ApplicationController

  def create
    current_user.friends.create
    redirect_to user_list_path
  end

  def destroy
    current_user.friends.destroy
    redirect_to user_list_path , :notice => "Your new has been deleted"
  end
end
