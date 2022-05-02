class BoxChannel < ApplicationCable::Channel
  def subscribed
    stream_from "box_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def request(data)
    ActionCable.server.broadcast 'box_channel', content: data['content']
  end
end