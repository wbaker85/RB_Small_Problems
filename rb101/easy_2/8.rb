puts 'Enter int'
int = gets.chomp.to_i

puts 'Enter s for sum or p for product'
oper = gets.chomp.downcase

if oper == 's'
  result = [*1..int].reduce(&:+)
  word = 'sum'
elsif oper == 'p'
  result = [*1..int].reduce(&:*)
  word = 'product'
end

puts "The #{word} of all integers from 1 to #{int} is #{result}."