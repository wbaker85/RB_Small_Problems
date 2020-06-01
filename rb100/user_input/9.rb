loop do
  puts 'how many lines to print (Q to quit)'
  input = gets.chomp
  break if input.downcase == 'q'

  input.to_i.times do |idx|
    puts "line #{idx}"
  end
end