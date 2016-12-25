# Exercise 3: Vector and function practice

# Create a vector `marbles` with 6 colors (representing marbles).
marbles <- c('red', 'blue', 'green', 'yellow', 'magenta', 'cyan')

# Use the `sample()` function to randomly select a single marble
my.marble <- sample(marbles, 1)

# Define a function called MarbleGame. This function should:
# - Takes in a single argument `guess` that is a guess at what color marble will be drawn
# - Randomly samples a marble from the vector
# - Returns whether or not the person guessed accurately (preferrably a character string phrase)

MarbleGame <- function(guess) {
  marble <- sample(marbles, 1)
  if(marble == guess) {
    return("You won!")
  }else {
    return("You lost :(")
  }
}

# Play the marble game by guessing a color!
MarbleGame('blue')

# Bonus: Play the marble game until you win, keeping track of how many tries you take
# Hint, you'll need to use a `while` control structure, which is not covered in the module
have.not.won <- TRUE
tries <- 0
while(have.not.won) {
  tries <- tries + 1
  result <- MarbleGame(marble.bag, 'blue') # try to guess 'blue'
  if(result == "You won!") {
    have.not.won <- FALSE
  }
}
print(tries)

## Double bonus(answer not provided): play the game 1000X (until you win) and track the average number of tries
# Is it what you expected based on the probability
