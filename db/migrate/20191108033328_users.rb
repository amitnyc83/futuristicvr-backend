class Users < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.integer :phone_number
      t.string :img
      t.string :username
      t.string :type
      t.string :auth_token

      t.timestamps
    end
  end
end
