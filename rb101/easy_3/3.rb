print 'Type something: '
string = gets.chomp
stripped = string.gsub(' ', '')

puts "There are #{stripped.length} characters in #{string}."