users = RestClient.get("http://br-interview-api.heroku.com/users")
user_objects = JSON.parse(users)

teams = RestClient.get("http://br-interview-api.heroku.com/teams")
team_objects = JSON.parse(teams)

favorites = RestClient.get("http://br-interview-api.heroku.com/favorites")
favorite_objects = JSON.parse(favorites)

user_objects.each do |user|
  User.create(user_api_id: user['user']['id'], first_name: user['user']['first_name'], last_name: user['user']['last_name'])
end

team_objects.each do |team|
  Team.create(team_api_id: team['team']['id'], location: team['team']['city'], nickname: team['team']['nick'])
end

favorite_objects.each do |favorite|
  Favorite.create(user_api_id: favorite['favorite']['user_id'], team_api_id: favorite['favorite']['team_id'], current_amount: favorite['favorite']['current_points'], last_week_amount: favorite['favorite']['last_week_points'])
end