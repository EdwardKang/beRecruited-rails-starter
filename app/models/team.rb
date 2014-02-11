class Team < ActiveRecord::Base
  validates_presence_of :team_api_id, :nickname
  validates_uniqueness_of :team_api_id, :nickname
  
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
