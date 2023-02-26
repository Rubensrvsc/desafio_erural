class UserController < ApplicationController
  def new_invite
    @rooms = Room.all
    @users = User.all
  end

  def invite
    if UserRoom.where(user_id: params[:user_id], room_id: params[:room_id]).exists?
      redirect_to new_invite_path
    else
      UserRoom.create(user_id: params[:user_id], room_id: params[:room_id])
      redirect_to root_path
    end
  end
end
