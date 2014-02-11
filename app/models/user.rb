class User < ActiveRecord::Base
  has_many(
    :favorites,
    foreign_key: :user_api_id,
    primary_key: :user_api_id
  )
  
  has_many :teams, through: :favorites
end
