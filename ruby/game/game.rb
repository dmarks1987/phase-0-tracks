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
  attr_accessor :users_word, :hidden_word

# Initialize the instance with a word that is inputed by the user. 
  def initialize(users_word)
    @users_word = users_word
    @hidden_word = "_ " * users_word.length
  end

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
      else
        puts "#{letter_guessed} is not in the word. Try again."
      end
    end
  end

  def win_or_lose
    if @users_word == @hidden_word
      puts "You just won. You're amazing."
    else
      puts "Wow, you're a freaking loser."
    end
  end
end



# # User interface
# puts "Player 1 please enter a word."
# word_input = gets.chomp.downcase


# game = Game.new(word_input)

