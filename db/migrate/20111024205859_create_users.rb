class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :full_name, :null => false
      t.string :nickname
      t.string :encrypted_password, :null => false
      t.string :password_salt, :null => false
      t.string :email, :null => false
      t.integer :grad_year, :null => false

      t.timestamps
    end
  end
end
