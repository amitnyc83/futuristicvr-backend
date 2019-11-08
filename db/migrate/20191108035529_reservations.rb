class Reservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.string :start_time
      t.string :end_time
      t.string :reservation_length
      t.datetime :reservation_date
      t.integer :customer_id
      t.integer :game_id
    end
  end
end
