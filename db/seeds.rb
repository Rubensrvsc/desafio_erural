# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.create(username: 'luiz', email: 'luiz@mail.com')
User.create(username: 'maria', email: 'maria@mail.com')

Room.create(number: 10, name: 'Trailer Bullet Train', link: 'https://www.youtube.com/watch?v=0IOsk2Vlc4o')

room_id = Room.find_by(number: 10).id
user_id = User.find_by(username: 'luiz').id

UserRoom.create(room_id: room_id, user_id: user_id)
