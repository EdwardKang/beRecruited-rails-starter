users = RestClient.get("http://br-interview-api.heroku.com/users")
user_objects = JSON.parse(users)

user_objects.each do |user|
  User.create(user_api_id: user['id'], first_name: user['first_name'], last_name: user['last_name'])
end

teams = RestClient.get("http://br-interview-api.heroku.com/teams")
team_objects = JSON.parse(teams)

team_objects.each do |team|
  Team.create(team_api_id: team['id'], location: team['city'], nickname: team['nick'])
end

favorites = RestClient.get("http://br-interview-api.heroku.com/favorites")
favorite_objects = JSON.parse(favorites)

favorite_objects.each do |favorite|
  Favorite.create(user_api_id: favorite['user_id'], team_api_id: favorite['team_id'], current_amount: favorite['current_points'], last_week_amount: favorite['last_week_points'])
end