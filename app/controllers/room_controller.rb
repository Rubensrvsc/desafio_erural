class RoomController < ApplicationController

  def new
    @room = Room.new
  end

  def index
  end

  def show
  end

  def create
    @room = Room.new(room_params)
    respond_to do |format|
      if @room.save
        redirect_to index_path
      end
    end

  end

  private
    def room_params
      params.require(:room).permit(:number, :link)
    end
end
