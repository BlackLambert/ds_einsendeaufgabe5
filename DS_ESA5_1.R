min_num <- 0
max_num <- 100
max_number_of_guesses <- 10

player.name = "No name yet"
game.player_wins <- 0
game.player_loss <- 0
match.count <- 0
match.chosen_number <- 0
match.guess_count <- 0

start_game()


start_game <- function()
{
  init_game()
}


init_game <- function()
{
  print("Hello there! What is your name?")
  assign("player.name", readline(prompt="Enter your name: "), envir = .GlobalEnv)
  print(paste("So your name is ", player.name, "? I like that name."))
  request_game()
}

request_game <- function()
{
  print("Would you like to play a litte game?")
  answer <- readline(prompt="Answer with [y]es or [n]o: ")
  if(answer == "y")
  {
    print("Perfekt!")
    explain_rules()
    start_match()
  }
  else if(answer == "n")
  {
    print("That's sad. Well, see you later, aligator")
  }
  else
  {
    print("Please speak up. I couldn't hear you.")
    request_game()
  }
}

explain_rules <- function()
{
  print("Let me explain the rules.")
  print(paste("I will choose a number between ", min_num, " and ", max_num, "."))
  print("It is your job to guess this number.")
  print(paste("You have ", max_number_of_guesses, "attempts to guess correctly."))
  print("The next guess will be your loss.")
}

start_match <- function()
{
  print("Let's get started!")
  init_match()
  start_guess()
}

init_match <- function()
{
  assign("match.chosen_number", as.numeric(sample(min_num:max_num, 1)), envir = .GlobalEnv)
  assign("match.guess_count", 0, envir = .GlobalEnv)
  print("I chose my number")
}

start_guess <- function()
{
  assign("match.guess_count", match.guess_count + 1, envir = .GlobalEnv)
  guessed_number <- request_guess()
  process_guess(guessed_number)
}

request_guess <- function()
{
  print(paste("Make your ", match.guess_count ," guess!"))
  prompt <- paste("Guess a number between ", min_num, " and ", max_num, ".")
  guess <- as.numeric(readline(prompt=prompt))
  if(!validate_guess(guess))
  {
    result <-request_guess()
  }
  else
  {
    result <- guess
  }
  return(result)
}

validate_guess <- function(guess)
{
  if(guess < min_num || guess > max_num)
    result <- FALSE
  else 
    result <- TRUE
  return(result)
}

process_guess <- function(guess)
{
  if(guess == match.chosen_number)
  {
    process_win()
    return()
  }
  else if(guess < match.chosen_number)
  {
    print(paste("My number is smaller than ", guess))
  }
  else if(guess > match.chosen_number)
  {
    print(paste("My number is larger than ", guess))
  }
  else
    stop("Processing the guess went wrong.")
  
  if(match.guess_count == max_number_of_guesses)
    process_loss()
  else
    start_guess()
}

process_win <- function()
{
  print("Wow, your guess is correct.")
  assign("game.player_wins", game.player_wins + 1, envir = .GlobalEnv)
  print_game_state()
  ask_for_play_again()
}

process_loss <- function()
{
  print(paste("This was your last guess. I win! My number was ", match.chosen_number))
  assign("game.player_loss", game.player_loss + 1, envir = .GlobalEnv)
  print_game_state()
  ask_for_play_again()
}

print_game_state <- function()
{
  print(paste("You won ", game.player_wins, " times and lost ", game.player_loss, " times."))
}

ask_for_play_again <- function()
{
  print("Do you want to play again?")
  answer <- readline(prompt="Answer with [y]es or [n]o: ")
  if(answer == "y")
    start_match()
  else if(answer == "n")
    finish_game()
  else
  {
    print("Please speak up. I couldn't hear you.")
    ask_for_play_again()
  }
}

finish_game <- function()
{
  print("That's sad. But it was quite fun. See you!")
}

