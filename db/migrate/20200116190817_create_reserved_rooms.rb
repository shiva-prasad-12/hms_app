class CreateReservedRooms < ActiveRecord::Migration
  def change
    create_table :reserved_rooms do |t|
      t.integer :number_of_rooms
      t.references :roomtype, index: true, foreign_key: true
      t.references :reservation, index: true, foreign_key: true
      t.string :status

      t.timestamps null: false
    end
  end
end
