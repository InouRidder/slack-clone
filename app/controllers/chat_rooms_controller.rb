class ChatRoomsController < ApplicationController
  def index
    @chat_rooms = ChatRoom.all
  end

  def show
    @chat_room = ChatRoom.find(params[:id])
    @message = Message.new
  end
end
