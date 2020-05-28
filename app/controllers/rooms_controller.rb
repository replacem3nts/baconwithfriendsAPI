class RoomsController < ApplicationController
  skip_before_action :authorized

  def create
    slug = Sysrandom.hex(10)
    room = Room.create(slug: slug, name: params[:name])
    render json: {room: RoomSerializer.new(room)}
  end

  def index
    rooms = Room.all
    if rooms
      render :json => rooms
    else
      render json: {message: "No rooms found."}
    end
  end

  def show
    room = Room.find(params[:id])
    if room
      render json: {room: RoomSerializer.new(room)}
    else 
      render json: {message: "Room not found."}
    end
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
