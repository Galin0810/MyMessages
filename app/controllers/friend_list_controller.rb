class FriendListController < ApplicationController
  before_action :set_user, only:[:create, :destroy]
  def create
    @user= User.find(params[:id])
    redirect_to root_path  
  end

  def destroy
    @user= User.find(params[:id])
    @user.destroy!
    redirect_to root_path , :notice => "Your friend has been deleted"
  end
  
  private 

  
  
  def user_params
      params.require(:user).permit(:name, :birthday, :sex, :email, :password)
  end

  def set_user
      @user = User.somehow_find_and_set_the_user(params[:id])
   end
  
end
