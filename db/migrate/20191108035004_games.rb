class Games < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :name
      t.string :description
      t.string :image
      t.integer :genre_id
      t.integer :admin_id
    end
  end
end
