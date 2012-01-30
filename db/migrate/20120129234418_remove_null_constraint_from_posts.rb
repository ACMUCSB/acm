class RemoveNullConstraintFromPosts < ActiveRecord::Migration
  def up
    remove_column :posts, :lft
    remove_column :posts, :rgt
    
    add_column :posts, :lft, :integer        
    add_column :posts, :rgt, :integer
  end

  def down
    remove_column :posts, :lft
    remove_column :posts, :rgt
    
    add_column :posts, :lft, :null => false        
    add_column :posts, :rgt, :null => false
  end
end