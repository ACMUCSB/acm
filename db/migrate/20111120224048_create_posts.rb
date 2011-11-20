class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string  :title, :null => false
      t.text    :body, :null => false
      t.integer :user_id, :null => false
      t.integer :lft, :null => false
      t.integer :rgt, :null => false

      t.timestamps
    end
  end
end
