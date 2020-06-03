def greetings(arr, hash)
  return "Hello #{arr.join(' ')} - #{hash[:title]} #{hash[:occupation]}"

end

p greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })