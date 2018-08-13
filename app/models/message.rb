class Message < ApplicationRecord
  validates :text, presence: :true

  after_create :broadcast

  private

  def broadcast
    ActionCable.server.broadcast(ChatChannel::STREAM_FROM, as_json.merge(action: 'CreateMessage'))
  end
end
