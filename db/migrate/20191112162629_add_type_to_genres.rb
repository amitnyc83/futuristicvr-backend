class AddTypeToGenres < ActiveRecord::Migration[6.0]
  def change
    add_column :genres, :type, :string
  end
end
