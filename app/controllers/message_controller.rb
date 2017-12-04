class MessageController < ApplicationController
  before_action :set_friend

  def index
    @messages = Message.or(user_id: current_user.id, friend_id: @friend_id).or(user_id: @friend_id, friend_id: current_user.id.to_s)
  end

  def create
    current_user.messages.create(message_params)
    redirect_to messages_path(@friend_id)
  end

  private 

  def set_friend
    @friend_id = params[:friend_id]
  end

  def message_params
    params.require(:message).permit(:message, :friend_id)
  end

end