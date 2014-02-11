class User < ActiveRecord::Base
  has_one(
    :favorite,
    foreign_key: :user_api_id,
    primary_key: :user_api_id
  )
  
  has_one :team, through: :favorites
end
