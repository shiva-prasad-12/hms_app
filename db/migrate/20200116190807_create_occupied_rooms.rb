class CreateOccupiedRooms < ActiveRecord::Migration
  def change
    create_table :occupied_rooms do |t|
      t.datetime :check_in
      t.datetime :check_out
      t.references :room, index: true, foreign_key: true
      t.references :reservation, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
