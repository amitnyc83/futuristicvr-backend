class Games < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :name
      t.string :description
      t.string :image
      t.string :genre
    end
  end
end
