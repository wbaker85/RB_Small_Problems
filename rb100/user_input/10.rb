num1 = nil
num2 = nil

loop do
  puts 'enter a number (one needs to be negative)'
  num1 = gets.chomp.to_i

  puts 'enter another number'
  num2 = gets.chomp.to_i

  break if num1 < 0 || num2 < 0
  puts 'invalid input try again'
end

puts "result is #{num1 + num2}"

