print 'Enter name '
name = gets.chomp

puts !name.end_with?('!') ? "Hello #{name}" : "HELLO #{name.upcase.slice(0, name.length - 1)}.  WHY ARE WE SCREAMING?"