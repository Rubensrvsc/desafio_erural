class RoomController < ApplicationController
  before_action :set_users, only: %i[ show ]
  before_action :check_credentials, only: %i[ show ]

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

  def go_room_movie
    @rooms = Room.all
  end

  def movie
    redirect_to show_room_path(id: params[:id], username: params[:user_name], email: params[:user_email])
  end

  private
    def room_params
      params.require(:room).permit(:number, :link)
    end

    def set_users
      @users = User.includes(:user_rooms).where.not(users: { id: nil } ).where(user_rooms: { user_id: nil } )
      @user = User.new
    end

    def check_credentials
      if !params[:username].present? || !params[:email].present?
        redirect_to root_path
      end

      if User.includes(:user_rooms).where(users: { username: params[:username], email: params[:email] } ).where(user_rooms: { room_id: params[:id] } ).exists?
        return true
      else
        redirect_to root_path
      end
    end
end
