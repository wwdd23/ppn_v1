class ChangePostsDescriptionToLongtext < ActiveRecord::Migration
  def up
    change_column :posts, :description, :longtext
  end

  def down
    change_column :posts, :description, :text
  end
end
