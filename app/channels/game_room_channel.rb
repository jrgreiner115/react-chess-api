class GameRoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'my-room'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end


end
