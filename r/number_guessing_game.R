# Title     : Number guessing
# Objective : quick exercise to get used to r
# Created by: linda
# Created on: 17/05/2021

random_number <- floor(runif(1, min=1, max=101))
guessed <- FALSE
print("GUESS THE NUMBER!")
print("Just a tip: It's something in between 1 and 100.")
while (guessed == FALSE) {
  guess_text <- readline(prompt="Your number: ")
  guess <- suppressWarnings(as.integer(guess_text))
  if(is.na(guess)) {
    print("You need to guess a NUMBER you fool.")
    next
  }

  if(guess < random_number) {
    print("WROOONG! To low. Try again.")
  }

  if(guess > random_number) {
    print("WROOONG! To high. Try again.")
  }

  if(guess == random_number) {
    print(paste("ABSOLUTELY RIGHT! You guessed the number: ",toString(random_number)))
    guessed <- TRUE
  }
}