class RoomsChannel < ApplicationCable::Channel
  def subscribed
    @room = Room.find_by(id: params[:room_id])
    stream_for @room
    # stream_from "rooms_#{@room.id}_channel"
  end

  def unsubscribed
    raise NotImplementedError
  end
end
