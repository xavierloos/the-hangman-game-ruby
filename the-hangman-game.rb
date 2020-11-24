#Create words to add to the dictionary
#Choose a random word and divide the caracters,
#Show a _ per character
#if a letter is guessed replace the _ for the letter
#Create a player
# A player has 3 attempts
# if the player win o loses ask if it wants to play or add a new
#word to the dictionary
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
      # random_array.each do |x|
      #   if x == letter
      #     i = random_array.index(x)
      #     guess[i] = letter
      #   end
      # end
      index_found=[]
      random_array.each_index.select{|x| index_found.push(x) if random_array[x] == letter}
      # p index_found
      for index in index_found 
        guess[index] = letter
      end
      print guess.join(" ")
      break if letter == " "
    end
  else
    break
  end
end
