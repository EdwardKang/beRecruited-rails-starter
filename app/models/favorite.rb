class Favorite < ActiveRecord::Base
  attr_accessible :current_amount, :last_week_amount
    
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
  
  def self.top(team, limit = 10)
    # TODO: Given a team, return the top n users
    teams_top_favorites = Favorite.top_favorites(team, limit)
  
    teams_top_favorites.map do |favorite|
      User.find_by_user_api_id(favorite.user_api_id)
    end
  end
  
  def self.top_favorites(team, limit)
    team_id = Team.find_by_nickname(team).team_api_id
    
    Favorite.includes(:user_api_id).where(team_api_id: team_id).order('current_amount DESC').limit(limit)
  end
end
