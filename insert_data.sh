#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.


# Empty existing data and reset IDs
$($PSQL "TRUNCATE TABLE games, teams RESTART IDENTITY")

# Get all unique team names from the CSV
TEAM_VALUES=$(awk -F, 'NR > 1 {print $3; print $4}' games.csv | sort -u | awk '{printf "('\''%s'\''),", $0}' | sed 's/,$//')

# Insert all teams
TEAM_INSERT_RESULT=$($PSQL "INSERT INTO teams(name) VALUES $TEAM_VALUES")

# Build all game records with team IDs looked up from the teams table
GAME_VALUES=$(awk -F, 'NR > 1 {printf "(%s, '\''%s'\'', (SELECT team_id FROM teams WHERE name = '\''%s'\''), (SELECT team_id FROM teams WHERE name = '\''%s'\''), %s, %s),", $1, $2, $3, $4, $5, $6}' games.csv | sed 's/,$//')

# Insert all games
GAME_INSERT_RESULT=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES $GAME_VALUES")
