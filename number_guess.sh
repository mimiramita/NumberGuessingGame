#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=players -t --no-align -c"

echo Enter your username:
read username

player_id=$($PSQL "SELECT player_id FROM players WHERE username = '$username';")
if [[ -z $player_id ]]
then
  echo "Welcome, $username! It looks like this is your first time here."
  add_username=$($PSQL "INSERT INTO players(username) VALUES('$username');")
  add_game=$($PSQL "UPDATE players SET games_played = 1 WHERE username = '$username';")
else
  best_game=$($PSQL "SELECT best_game FROM players WHERE player_id=$player_id")
  games_played=$($PSQL "SELECT games_played FROM players WHERE player_id=$player_id")
  best_game=$($PSQL "SELECT best_game FROM players WHERE player_id=$player_id")
  echo "Welcome back, $username! You have played $games_played games, and your best game took $best_game guesses."
  games_played=$(($games_played+1))
  game_splayed_update=$($PSQL "UPDATE players SET games_played = $games_played WHERE player_id=$player_id")
fi

player_id=$($PSQL "SELECT player_id FROM players WHERE username = '$username';")
best_game=$($PSQL "SELECT best_game FROM players WHERE username = '$username';")
right_number=$(($RANDOM % 1000 + 1))
echo $right_number

echo "Guess the secret number between 1 and 1000:"
read number
guesses=1

while :
do
  if [[ ! "$number" =~ ^[0-9]+$ ]]
  then
    echo $number
    echo "That is not an integer, guess again:"
    read number
    guesses=$(($guesses+1))
  elif [[ $number -gt $right_number ]]
  then
    echo "It's lower than that, guess again:"
    read number
    guesses=$(($guesses+1))
  elif [[ $number -lt $right_number ]]
  then
    echo "It's higher than that, guess again:"
    read number
    guesses=$(($guesses+1))
  else
    if [[ -z $best_game ]]
    then
      add_best_game=$($PSQL "UPDATE players SET best_game = $guesses WHERE player_id = $player_id;")
      echo $add_best_game
    else
      if [[ $guesses -lt $best_game ]]
      then
      add_best_game=$($PSQL "UPDATE players SET best_game = $guesses WHERE player_id = $player_id;")
      echo $add_best_game
      fi
    fi
    echo "You guessed it in $guesses tries. The secret number was $right_number. Nice job!"
    break
  fi
done