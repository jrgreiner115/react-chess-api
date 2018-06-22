class GameValidationChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'game-validator'
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
