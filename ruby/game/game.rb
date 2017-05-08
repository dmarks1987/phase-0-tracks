# USER INTERFACE
# Ask user to enter a word
# Store word into an array of separated letters called word_array
# Create variable guess_count equal to number of letters in the array
# Initialize game class with the array of letters

# Show 
class Game
  attr_reader :word_array, :is_over
  attr_writer :guess_count

  def initialize(word_array, guess_count)
    @word_array = word_array
    @guess_count = guess_count
  end

  def store_initial_data
    @word_array
  end

  def check_guess(word_array, letter_guessed)
    if @word_array.include? letter_guessed
  end
end

puts "Player 1 please type in a word you wish Player 2 to guess."

word_input = gets.chomp.downcase
word_array = []
word_array = word_input.split('')
guess_count = word_array.length

game = Game.new(word_array, guess_count)