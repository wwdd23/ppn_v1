class CreatePosts < ActiveRecord::Migration
  def change
    def change
      create_table "posts", force: :cascade do |t|
        t.integer  "type",           limit: 4,     default: 0,      null: false
        t.string   "title",          limit: 255,   default: "",     null: false
        t.text     "description",    limit: 65535,                  null: false
        t.text     "content",        limit: 65535,                  null: false
        t.string   "url",            limit: 255
        t.string   "source",         limit: 255,   default: "NuLL"
        t.string   "post_unique_id", limit: 191,                    null: false
        t.datetime "pubdate",                                       null: false
        t.integer  "real_number",    limit: 4
        t.integer  "fake_number",    limit: 4
        t.datetime "created_at"
        t.datetime "updated_at"
        t.datetime "deleted_at"
      end

    end
  end
end
