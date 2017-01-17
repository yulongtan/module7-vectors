# Exercise 5: Vector practice

# Create a vector `words` of 6 (or more) words.
# You can Google for a "random word generator" if you wish!
words <- c("apples", "bananas", "moth", "danger", "elephants", "zoo")

# Create a new vector `words.of.the.day` that is your `words` vector with the string
# "is the word of the day!" pasted on to the end.
# BONUS: Surround the word in quotes (single or double) (e.g., `"data" is the word of the day!`)
words.of.the.day <- paste(words, "is the word of the day!")

# Create a vector `a.f.words` which are the elements in `words` that start with "a" through "f"
# Hint: use a comparison operator to see if the word comes before "f" alphabetically!
# Tip: make sure all the words are lower-case, and only consider the first letter of the word!
a.f.words <- words[substr(tolower(words), 1, 1) < "g"]
print(a.f.words)

# Create a vector `g.m.words` which are the elements in `words` that start with "g" through "m"
g.m.words <- words[substr(tolower(words), 1, 1) > "h" & substr(tolower(words), 1, 1) < "n"]

# Define a function `WordBin` that takes in three arguments: a vector of words, and two letters. The function
# should return a vector of words that go between those letters alphabetically.
WordBin <- function(words, one, two) {
  words <- words[substr(tolower(words), 1, 1) >= one & substr(tolower(words), 1, 1) <= two]
  return(words)
}
print(WordBin(words, "b", "f"))
