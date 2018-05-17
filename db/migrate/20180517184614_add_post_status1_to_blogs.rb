class AddPostStatus1ToBlogs < ActiveRecord::Migration[5.2]
  def change
    add_column :blogs, :status1, :integer, default: 0
  end
end
