puts 'Want to print?  enter y or n'

input = ''

loop do
  input = gets.chomp.downcase
  break if input.match?(/[yn]/i)
  puts 'Invalid input, try again!'
end

if input == 'y'
  puts 'asdfasdfasdf'
end