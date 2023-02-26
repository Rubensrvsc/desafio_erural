class UserController < ApplicationController
  before_action :set_user_params, only: %i[ create ]
  def new_invite
    @rooms = Room.all
    @users = User.all
  end

  def invite
    if UserRoom.where(user_id: params[:user_id], room_id: params[:room_id]).exists?
      redirect_to new_invite_path, notice: 'Convite já foi feito'
    else
      UserRoom.create(user_id: params[:user_id], room_id: params[:room_id])
      redirect_to root_path, notice: 'Convite feito'
    end
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(set_user_params)
    if @user.save
      redirect_to root_path, notice: 'Usuário cadastrado com sucesso'
    else
      redirect_to root_path, notice: 'Não foi possivel criar usuário'
    end
  end

  private
    def set_user_params
      params.permit(:username, :email)
    end
end
