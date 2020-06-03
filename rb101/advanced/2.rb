=begin
All lines have 3 stars except for the middle line which has n stars
there are preceeding and interior spaces

interior for 7:
  2
  1
  0

interior for 9:
  3
  2
  1
  0

interior spaces stars wtih n / 2 => floor - 1
leading spaces is just the opposite
=end

def star(n)
  leading_spaces = [*(0..(n / 2) - 1)]
  interior_spaces = leading_spaces.reverse
  middle = (n / 2) + 1

  1.upto(n) do |row|
    if row == middle
      puts '*' * n
      interior_spaces.reverse!
      leading_spaces.reverse!
    else
      puts ' ' * leading_spaces[0] + '*' + ' ' * interior_spaces[0] + '*' + ' ' * interior_spaces[0] + '*'
      interior_spaces.rotate!
      leading_spaces.rotate!
    end
  end

end

star(7)

# *  *  *
#  * * *
#   ***
# *******
#   ***
#  * * *
# *  *  *

star(9)

# *   *   *
#  *  *  *
#   * * *
#    ***
# *********
#    ***
#   * * *
#  *  *  *
# *   *   *