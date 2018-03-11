class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :type
      t.string :title
      t.text :description
      t.text :content
      t.string :url
      t.string :source
      t.datetime :pubdate
      t.integer :real_number
      t.integer :fake_number

      t.timestamps null: false
    end
  end
end
