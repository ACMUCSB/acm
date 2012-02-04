class RemoveNullConstraintFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :lft
    remove_column :posts, :rgt
    add_column :posts, :lft, :integer
    add_column :posts, :rgt, :integer
  end
end
