BeRecruitedInterview::Application.routes.draw do
  root :to => 'leaderboard#index'
  get "/leaderboard", to: 'leaderboard#leaderboard'
end
