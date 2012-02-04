class Post < ActiveRecord::Base
  acts_as_nested_set
  attr_accessible :title, :body, :parent_id
end
