class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :full_name
      t.string :nickname
      t.string :encrypted_password
      t.string :password_salt
      t.string :email
      t.integer :grad_year

      t.timestamps
    end
  end
end
