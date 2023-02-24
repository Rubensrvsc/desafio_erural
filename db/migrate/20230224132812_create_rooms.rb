class CreateRooms < ActiveRecord::Migration[7.0]
  def change
    create_table :rooms do |t|
      t.integer :number
      t.string :link

      t.timestamps
    end
  end
end
