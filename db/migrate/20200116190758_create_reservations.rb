class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.date :date_in
      t.date :date_out
      t.string :made_by
      t.references :customer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
