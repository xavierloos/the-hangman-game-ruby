#Create words to add to the dictionary
#Choose a random word and divide the caracters,
#Show a _ per character
#if a letter is guessed replace the _ for the letter
#Create a player
# A player has 3 attempts
# if the player win o loses ask if it wants to play or add a new
#word to the dictionary
p "Hello"
dictionary = ["Hello", "dictionary"]
while true
  puts "Welcome to the HangMan Game"
  puts "Would you like to: \n1. Add a new word (write add) \n2. Play (write play)"
  choice = gets.chomp
  case choice
  when "add"
    puts "Add a new word:"
    new_word = gets.chomp
    dictionary.push(new_word)
    puts dictionary
  when "play"
    puts "Get ready!"
    #Get the word to guess
    random_word = dictionary.sample()
    random_array = random_word.split("")
    guess = []
    for l in random_array
      guess.push("_")
    end
    puts "This is your word: #{guess.join(" ")}"
    while true
      puts "\nGuess a letter"
      letter = gets.chomp
      for x in random_array
        if x == letter
          i = random_array.index(x)
          guess[i] = letter
        end
      end
      print guess.join(" ")
      break if letter == " "
    end
  else
    break
  end
end
