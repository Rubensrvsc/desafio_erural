class RoomController < ApplicationController
  before_action :set_users, only: %i[ show ]

  def new
    @room = Room.new
  end

  def index
    @rooms = Room.all
  end

  def show
    @room = Room.find_by(id: params[:id])
    @link = @room.link.split("?v=")[1].split("&")[0]
  end

  def invited
    UserRoom.create(user_id: params[:user][:id], room_id: params[:room_id])
    redirect_to root_path
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

    def set_users
      @users = User.includes(:user_rooms).where.not(users: { id: nil } ).where(user_rooms: { user_id: nil } )
      @user = User.new
    end
end
