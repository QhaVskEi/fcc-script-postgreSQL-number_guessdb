#!/bin/bash
PSQL="psql -X --username=freecodecamp --dbname=number_guess --tuples-only -c"

echo "Enter your username:"
read USERNAME

PROFILE_ID=$($PSQL "SELECT profile_id FROM profile WHERE username='$USERNAME'")
if [[ -z $PROFILE_ID ]]
then
  echo "Welcome, $USERNAME! It looks like this is your first time here."
  UPDATE_USER=$($PSQL "INSERT INTO profile(username) VALUES('$USERNAME')")
  NEW_PROFILE=$($PSQL "SELECT profile_id FROM profile WHERE username='$USERNAME'")

  #the game will start here

  GUESS_NUMBER=$((RANDOM % 1000 + 1))
  echo "Guess the secret number between 1 and 1000:"

  GUESSED=false
  ATTEMPTS=0

  while [ "$GUESSED" = false ];
  do
    read GUESS

    if [[ $GUESS =~ ^[0-9]+$ ]]
    then
      ((ATTEMPTS++))

      if [ $GUESS -gt $GUESS_NUMBER ]; 
      then
        echo "It's lower than that, guess again:"
      elif [ $GUESS -lt $GUESS_NUMBER ];
      then
        echo "It's higher than that, guess again:"
      else
        GUESSED=true
        echo "You guessed it in $ATTEMPTS tries. The secret number was $GUESS_NUMBER. Nice job!"
        UPDATE_GAME=$($PSQL "INSERT INTO game(best_game, profile_id) VALUES($ATTEMPTS, '$NEW_PROFILE')")
      fi
    else
      echo "That is not an integer, guess again:"
    fi

  done

else

  COUNT_GAME_PLAYED=$($PSQL "SELECT COUNT(game_id) FROM game WHERE profile_id=$PROFILE_ID")
  BEST_GAME_PLAYED=$($PSQL "SELECT MIN(best_game) FROM game WHERE profile_id=$PROFILE_ID")

  COUNT_FORMATED=$(echo $COUNT_GAME_PLAYED | sed 's/^ //g')
  BEST_FORMATED=$(echo $BEST_GAME_PLAYED | sed 's/^ //g')

  echo "Welcome back, $USERNAME! You have played $COUNT_FORMATED games, and your best game took $BEST_FORMATED guesses."
  
  GUESS_NUMBER=$((RANDOM % 1000 + 1))
  echo "Guess the secret number between 1 and 1000:"

  GUESSED=false
  ATTEMPTS=0

  while [ "$GUESSED" = false ];
  do
    read GUESS

    if [[ $GUESS =~ ^[0-9]+$ ]]
    then
      ((ATTEMPTS++))

      if [ $GUESS -gt $GUESS_NUMBER ]; 
      then
        echo "It's lower than that, guess again:"
      elif [ $GUESS -lt $GUESS_NUMBER ];
      then
        echo "It's higher than that, guess again:"
      else
        GUESSED=true
        echo "You guessed it in $ATTEMPTS tries. The secret number was $GUESS_NUMBER. Nice job!"
        UPDATE_GAME=$($PSQL "INSERT INTO game(best_game, profile_id) VALUES($ATTEMPTS, '$PROFILE_ID')")
      fi
    else
      echo "That is not an integer, guess again:"
    fi

  done
fi
