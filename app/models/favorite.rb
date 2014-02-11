class Favorite < ActiveRecord::Base
  belongs_to(
    :team,
    foreign_key: :team_api_id,
    primary_key: :team_api_id
  )
  belongs_to(
    :user,
    foreign_key: :user_api_id,
    primary_key: :user_api_id
  )
  
  def self.top(team, limit = 5)
    teams_top_favorite = team.favorites.includes(:user).order('current_amount DESC').limit(limit)
  
    teams_top_favorite.map do |favorite|
      favorite.user
    end
  end
end
