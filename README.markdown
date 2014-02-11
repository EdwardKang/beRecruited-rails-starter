### In order to complete this task I ...

- utilized jQuery UJS to make AJAX requests out of the leaderboard toggling.
- used an before commit on the team model to ajust the incorrectly filled location before a save to the database
- used a seed file to populate the database with the provided API (decided to do it this way in order to make use of Active Records associations and the API ids provided)
- added validations to the model in order to account for the possibility of incomplete data (made the decision to not include incomplete data in the database)
- recreated the schema file given through my own migrations (was going to add null checks to the columns where necessary but kept the schema exactly as it was)
