class CreateRoomTypes < ActiveRecord::Migration
  def change
    create_table :room_types do |t|
      t.string :description
      t.integer :max_capacity
      t.decimal :price

      t.timestamps null: false
    end
  end
end
