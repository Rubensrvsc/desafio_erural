class User < ApplicationRecord
    has_many :user_rooms
    has_many :rooms, through: :user_rooms

    validates :username, presence: true
    validates :email, presence: true

    def user_form
        "#{username}"
    end
end