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
  
  def self.top(team, limit = TOP_LIMIT)
    # TODO: Given a team, return the top n users
    
  end
end
