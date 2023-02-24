class CreateRoomsUsersJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :users, :rooms
    create_join_table :categories, :users do |t|
      t.index :room_id
      t.index :user_id
    end
  end
end
