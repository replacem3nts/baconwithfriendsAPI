class RoomsChannel < ApplicationCable::Channel
  def subscribed
    @room = Room.find_by(id: params[:room])
    stream_for @room
  end

  def received(data)
    RoomsChannel.broadcast_to(@room)
  end

  def unsubscribed
    raise NotImplementedError
  end
end
