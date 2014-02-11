class CreateFavorites < ActiveRecord::Migration
  def change
    create_table "favorites", :force => true do |t|
      t.integer  "user_api_id"
      t.integer  "team_api_id"
      t.integer  "current_amount"
      t.integer  "last_week_amount"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "favorites", ["team_api_id"], :name => "index_favorites_on_team_api_id"
    add_index "favorites", ["user_api_id", "team_api_id"], :name => "index_favorites_on_user_api_id_and_team_api_id"
    add_index "favorites", ["user_api_id"], :name => "index_favorites_on_user_api_id"
  end
end
