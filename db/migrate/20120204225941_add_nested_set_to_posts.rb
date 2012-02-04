class AddNestedSetToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :parent_id, :integer
    add_column :posts, :depth, :integer
  end
end
