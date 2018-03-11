class Changepost < ActiveRecord::Migration
  def change
    change_column_null :posts , :content, :text, null: false, default: '', index: true 
  end
end
