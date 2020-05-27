class RoomsController < ApplicationController
  skip_before_action :authorized

  def create
    slug = Sysrandom.hex(10)
    # Replace '1' with slug. Gem not working in this controller.
    room = Room.create(slug: slug)
    render json: {room: RoomSerializer.new(room)}
  end

  def destroy
    room = Room.find(params[:id])
    if room
      room.destroy
      render json: {message: "Room destroyed."}
    else
      render json: {message: "Room not found."}
    end
  end
  
end
