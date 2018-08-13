class MessagesController < ApplicationController
  expose :message
  expose :messages, -> { Message.all }

  def index
    render_api(messages)
  end

  def create
    message.save
    render_api(message, :created)
  end

  private

  def message_params
    params.require(:message).permit(:text, :user_name)
  end
end
