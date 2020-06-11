class GuessingGame
  def initialize(min, max)
    @min = min
    @max = max
    @guesses_left = Math.log2((@min..@max).size).to_i + 1
    @winning_number = rand(@min..@max)
  end

  def play
    result = one_game
    puts result
  end

  private

  def one_game
    while @guesses_left > 0
      this_guess = one_guess
      return "That's the number!" if this_guess == @winning_number
      compare_guess(this_guess)
      @guesses_left -= 1
    end

    "Game over you lost"
  end

  def compare_guess(this_guess)
    val = if this_guess > @winning_number
            "Your guess is too high"
          else
            "Your guess is too low"
          end

    puts val
  end

  def one_guess
    puts "You have #{@guesses_left} guesses remaining"
    p "Enter a number between #{@min} and #{@max}:"
    user_guess
  end

  def user_guess
    guess = gets.chomp
    until (@min..@max).include?(guess.to_i)
      p "Invalid guess. Enter a number between #{@min} and #{@max}:"
      guess = gets.chomp
    end
    guess.to_i
  end
end

game = GuessingGame.new(501, 1500)
game.play
