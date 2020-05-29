class RoomsController < ApplicationController
  skip_before_action :authorized, only: [:show]
# THE ABOVE SKIP BEFORE ACTION IS JUST FOR THE PURPOSES OF TESTING--WILL NEED TO IMPLEMENTED BEFORE DEPLOYING

  def create
    slug = Sysrandom.hex(6)
    room = Room.create(slug: slug, name: params[:name])
    ActionCable.server.broadcast('play_channel', {room: RoomSerializer.new(room)})
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

  def update
    room = Room.find(params[:id])
    if room
      room.update(room_params)
      render json: room
    else
      render json: {message: "Room not found."}
    end
  end

  private

  def room_params
    params.permit(:slug, :name)
  end

end
