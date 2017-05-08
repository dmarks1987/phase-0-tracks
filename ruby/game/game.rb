# USER INTERFACE
# Ask user to enter a word
# Store word into an array of separated letters called word_array
# Create variable guess_count equal to number of letters in the array
# Initialize game class with the word_array and the guess_count
# Show player 2 the amount of letters in the word represented by underscores
# Ask user to guess the word one letter at a time
# IF the user guesses a letter that is in the word
  # acknowledge their correctness with an updated underscore word with the letter revealed
  # OTHERWISE
    # tell them their guess was incorrect and to guess again
    # add 1 to the guess count


class Game
  attr_accessor :users_word, :hidden_word, :guess_count

# Initialize the instance with a word that is inputed by the user. 
  def initialize(users_word)
    puts "Let PLAYER 2 take over from here."
    @guess_count = users_word.length
    @users_word = users_word
    @hidden_word = "_ " * users_word.length
    @game_won = false
  end

# Method that stores the user's initial word input
  def store_user_input
    @users_word
  end

# CHECK LETTER GUESS OF USER
# IF the user guesses a letter that is in the word
  # put that letter into the proper place  in the hidden word
  # acknowledge their correctness with an updated hidden word with the letter revealed
  # OTHERWISE
    # tell them their guess was incorrect and to guess again
  def check_guess(letter_guessed)
    letter_guessed.downcase
    @users_word.split("").each_with_index do|user_letter, hidden_letter|
      if letter_guessed = user_letter
        @hidden_word[hidden_letter] = letter_guessed
        p @hidden_word
      end
      if !@users_word.include?(letter_guessed)
        puts "#{letter_guessed} is not in the word. Try again."
      end
    end
  end

  def victory
      puts "You just won. You're amazing."
  end

  def defeat
    puts "You lose."
  end

end

# User interface
puts "Player 1 please enter a word."
word_input = gets.chomp.downcase

game = Game.new(word_input)

inputed_letters = []
guess_count = word_input.length
guess_increment = 0

until guess_increment == guess_count
  puts "Guess a letter."
  next_letter = gets.chomp.downcase
  if inputed_letters.include? next_letter
    puts "You already have #{next_letter}. No guess penalty, try again."
    next_letter = gets.chomp.downcase
  end
  inputed_letters << next_letter
  game.check_guess(next_letter)
  if @users_word == @hidden_word
    game.victory
  end
  if guess_increment == guess_count
    game.defeat
  end
  guess_increment += 1
end

