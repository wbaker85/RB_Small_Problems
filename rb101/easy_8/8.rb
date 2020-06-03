def double_consonants(str)
  str.chars.map do |char|
    if char.match?(/[aeiou]/)
      char
    else
      char.match?(/[a-z]/i) ? char + char : char
    end
  end.join('')
end

p double_consonants('String') == "SSttrrinngg"
# p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
# p double_consonants("July 4th") == "JJullyy 4tthh"
# p double_consonants('') == ""