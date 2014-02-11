class CreateUsers < ActiveRecord::Migration
  def change
    create_table "users", :force => true do |t|
      t.integer  "user_api_id"
      t.string   "first_name"
      t.string   "last_name"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "users", ["user_api_id"], :name => "index_users_on_user_api_id"
  end
end
