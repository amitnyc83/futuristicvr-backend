class Reviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.integer :customer_id
      t.integer :game_id
      t.string :content
      t.integer :reservation_id
      t.integer :rating 
    end
  end
end
