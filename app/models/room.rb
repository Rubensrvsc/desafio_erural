class Room < ApplicationRecord
    has_many :user_rooms
    has_many :users, through: :user_rooms

    validates :number, presence: true
    validates :link, presence: true
    validates :name, presence: true
end
