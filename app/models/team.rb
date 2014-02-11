class Team < ActiveRecord::Base
  has_many(
    :favorites,
    foreign_key: :team_api_id,
    primary_key: :team_api_id
  )
  
  has_many :users, through: :favorites
end
