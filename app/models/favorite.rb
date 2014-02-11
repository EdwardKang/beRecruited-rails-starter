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
  
  def self.top(team, limit = 5)
    teams_top_favorites = Favorite.top_favorites(team, limit)
  
    teams_top_favorites.map do |favorite|
      favorite.user
    end
  end
  
  def self.top_favorites(team, limit)
    team.favorites.includes(:user).order('current_amount DESC').limit(limit)
  end
end
