class CreateNewTags < ActiveRecord::Migration
  def change
    create_table :new_tags do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
