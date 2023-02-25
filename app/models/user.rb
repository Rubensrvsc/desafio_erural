class User < ApplicationRecord
    has_many :user_rooms
    has_many :rooms, through: :user_rooms

    def user_form
        "#{username}"
    end
end