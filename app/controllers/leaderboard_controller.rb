class LeaderboardController < ApplicationController
  def index
    # TODO: Fetch team based on dropdown selection 
    # @team = ?

    # TODO: Fetch top 5 leaders for this team
    # @leaders = ?
    
    @teams = Team.all.sort_by { |team| team.nickname }
  end
end
