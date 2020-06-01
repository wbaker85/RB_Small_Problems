users = {
  bob: 'bob_password',
  joe: 'joe_passowrd',
}

loop do
  puts 'enter your username'
  user = gets.chomp

  puts 'enter your password'
  password = gets.chomp

  break if users[user.to_sym] == password
  puts 'wrong try again'
end

puts 'access granted'