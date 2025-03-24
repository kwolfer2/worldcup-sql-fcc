#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.
 { echo "TRUNCATE TABLE teams, games, raw_games RESTART IDENTITY;"
 echo "\COPY raw_games(year, round, winner, opponent, winner_goals, opponent_goals) FROM 'games.csv' DELIMITER ',' CSV HEADER;"
 echo "INSERT INTO teams(name) SELECT DISTINCT winner FROM raw_games UNION SELECT DISTINCT opponent FROM raw_games;"
 echo "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) 
 SELECT 
 r.year,
 r.round,
 w.team_id AS winner_id,
 o.team_id AS opponent_id,
 r.winner_goals,
 r.opponent_goals
 FROM raw_games r
 JOIN teams w ON r.winner = w.name
 JOIN teams o ON r.opponent = o.name;"
} | psql -U freecodecamp -d worldcup

#Truncate table data

#psql  -U freecodecamp -d worldcup -c "TRUNCATE TABLE teams, games;"
# Connect to the worldcup database and insert unqiue team names into teams table
#tail -n +2 games.csv | awk -F',' '{print $3; print $4}' | sort | uniq | while read team
#do
 # if [[ -n "$team" ]]; then
 #   psql -U freecodecamp -d worldcup -c "INSERT INTO teams(name) VALUES('$team');"
  #fi
#done

# Insert data into games table
#psql -U freecodecamp -d worldcup -c "INSERT INTO games 


