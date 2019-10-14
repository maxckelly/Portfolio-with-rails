class MessagesController < ApplicationController
  def new
    @message = Message.new
  end

  def create 

    message_params = params.require(:message).permit(:name, :email, :message)
    @message = Message.new message_params

    if @message.valid?
      redirect_to new_message_url, notice: "Messaged recieved! Thanks"
    else 
      render :new
    end
  end

  private

  def message_params
    params.require(:message).permit(:name, :email, :message)
  end
end
