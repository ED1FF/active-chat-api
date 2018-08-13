class MessagesController < ApplicationController
  expose :messages, -> { Message.all }

  def index
    render(messages)
  end
end
