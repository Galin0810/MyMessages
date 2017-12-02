class MessageController < ApplicationController
  before_action :set_message, only:[:create , :destroy]
  
    def index
      @message = Message.where(readed: false).count
    end
  
    def create
      friend.message.create(message_params)
      redirect_to root_path
    end
  
   
    
    def destroy
      Message.find(params[:id]).destroy
      flash[:success] = "User deleted"
      redirect_to _url
    end
    
    private 
  
    def message_params
      params.require(:message).permit(:text, :id)
    end
  
    def set_message
      @message = current_user.message.find(params[:id])
    end
end
