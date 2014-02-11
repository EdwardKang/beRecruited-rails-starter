class Favorite < ActiveRecord::Base
  belongs_to :team
  belongs_to :user
  
  def self.top(team, limit = TOP_LIMIT)
    # TODO: Given a team, return the top n users
  end
end
