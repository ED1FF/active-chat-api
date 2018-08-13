class ChatChannel < ApplicationCable::Channel
  STREAM_FROM = 'chat'.freeze

  def subscribed
    stream_from STREAM_FROM
  end
end
