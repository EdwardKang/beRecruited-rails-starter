class User < ActiveRecord::Base
  validates_presence_of :user_api_id, :first_name, :last_name
  validates_uniqueness_of :user_api_id
  
  has_one(
    :favorite,
    foreign_key: :user_api_id,
    primary_key: :user_api_id
  )
  
  has_one :team, through: :favorites
end
