class HomeController < ApplicationController
  def index
    session[:room_id] = Room.first.id
  end
end
