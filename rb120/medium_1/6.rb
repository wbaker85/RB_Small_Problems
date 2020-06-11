class GuessingGame
  def initialize(min, max)
    range = min..max

    @guesses_left = Math.log2(range.size).to_i + 1
    @winning_number = rand(range)
  end

  def play
    this_guess = one_guess

    if this_guess == @winning_number
      puts "That's the number!"
    else
      compare_guess(this_guess)
      @guesses_left -= 1
      if @guesses_left > 0
        play
      else
        puts "Game over you lost"
      end
    end
  end

  private

  def compare_guess(this_guess)
    puts (this_guess > @winning_number ? "Your guess is too high" : "Your guess is too low")
  end

  def one_guess
    puts "You have #{@guesses_left} guesses remaining"
    p "Enter a number between 1 and 100:"
    get_user_guess
  end

  def get_user_guess
    guess = gets.chomp
    until (1..100) === guess.to_i
      p 'Invalid guess.  Enter a number between 1 and 100: '
      guess = gets.chomp
    end
    guess.to_i
  end

end

game = GuessingGame.new
game.play