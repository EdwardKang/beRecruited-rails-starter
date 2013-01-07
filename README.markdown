Welcome! This is a simple rails project for potential beRecruited developers to complete.

Summary:
Users of an application participate in contests put on by their favorite teams to accrue points.  Top 5 users each week are given prizes. Given an external API (http://br-interview-api.heroku.com) that returns data of these users and teams, display leaderboards for specific teams of the top 5 users who have that team as a favorite.

The leaderboard should display the users' names, their current week points, and last week points.  Allow toggling between different team leaderboards.

Utilize the API to gain access to the data you will be using.  You can use the data in various different ways, including pre-populating your database, or on demand when needed.  If pre-populating, you can assume that the data will be static for the lifetime of the project, so you don't need to update this data.  Please include the code for pre-populating your database.

Details:
 - Create an application that displays a leaderboard of users who have gained points when participating in their favorite teams' contests.  There should be one leaderboard per team.
 - Data lives on the external API (http://br-interview-api.heroku.com)
 - Pre-populate your database (rake tasks or other scripts should be included in the project), or on demand (with api calls), or any other method you would like to choose.  It's okay to assume the data is static for the duration of the life of the project.  You don't need to handle the case of the data changing dynamically at all times.
 - Data includes users (about 100), NFL teams (around 34), and the relationships between users and the teams (referred to as favorites)
 - The external API has their own id's for objects (users and teams), which are used in the favorites to make the relationship between users and their teams
 - User objects have a count of points for each team they the user has a favorite
 - Team objects have nicknames, addresses, and other information
 - Favorite objects include the current and last week points the user has earned
 - You are encouraged to use gems and other libraries that may help you complete the project
 - Ruby on Rails framework is preferred, as this is what the majority of our current projects at beRecruited will involve.  Other languages and frameworks are acceptable, but please note why you chose another framework.
 - Be sure the app will run on a local machine (by running `rails s` if Rails 3.x, or `ruby script/server` in Rails 2.x).  Document any initial rake tasks or other scripts to be ran in the README.
 - Host your code on a public Github account and send us the link when completed.

Bonus points: 
 - Allow viewers of your leaderboard to switch between teams using AJAX
 - Host working app on a free Heroku.com instance
 - Handle important edge cases, including: improper JSON in API responses and possible missing data in JSON

API Information:
Here is the general information you'll need to retrieve information from the API. This is sample data that you should use to complete the app.  The data may have more than you'll need for the project. There are three 'GET' calls:

GET 'http://br-interview-api.heroku.com/users'
Returns a JSON string containing users.  There will be more information than you'll need, so parse accordingly.

GET 'http://br-interview-api.heroku.com/teams'
Returns a JSON string containing teams. "nick" is the equivalent of the _nickname_.  "address" will be the _location_.  There is a possibility that the address is unavailable.

GET 'http://br-interview-api.heroku.com/favorites'
Returns a JSON string containing details between the relationships between users and teams.  This will help you determine the points.  There are current_points and last_week_points named accordingly.  Assume current_points is for this week.
