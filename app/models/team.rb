class Team < ActiveRecord::Base
  before_create :fix_address
  
  has_many(
    :favorites,
    foreign_key: :team_api_id,
    primary_key: :team_api_id
  )
  
  has_many :users, through: :favorites
  
  def fix_address
    #so the address is not inputed as , , if it does not exist.
    self.location = nil if self.location == ", , "
  end
end
