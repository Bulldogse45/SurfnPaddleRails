class AddPostsToAuthor < ActiveRecord::Migration
  def change
    add_column :authors, :post, :array
  end
end
