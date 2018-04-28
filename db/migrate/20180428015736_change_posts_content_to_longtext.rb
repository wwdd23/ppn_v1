class ChangePostsContentToLongtext < ActiveRecord::Migration
  def up
    change_column :posts, :content, :longtext
  end

  def down
    change_column :posts, :content, :text
  end
end
