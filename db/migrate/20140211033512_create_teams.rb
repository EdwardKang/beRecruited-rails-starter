class CreateTeams < ActiveRecord::Migration
  def change
    create_table "teams", :force => true do |t|
      t.integer  "team_api_id"
      t.string   "location"
      t.string   "nickname"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    add_index "teams", ["team_api_id"], :name => "index_teams_on_team_api_id"
  end
end
