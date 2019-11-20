class AddAdminIdToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :admin_id, :bigint
  end
end
