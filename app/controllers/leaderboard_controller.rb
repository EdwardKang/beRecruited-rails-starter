class LeaderboardController < ApplicationController
  def index
    @teams = Team.all.sort_by { |team| team.nickname }
  end
  
  def leaderboard
    team_nickname = params[:team]
    @team = Team.find_by_nickname(team_nickname)
    
    if @team
      @leaders = Favorite.top(@team)
    end
    
    if request.xhr?
      if @team
        render partial: "layouts/leaderboard_data", locals: { leaders: @leaders, team: @team }
      else
        render partial: "layouts/no_team" 
      end
    end
  end
end
