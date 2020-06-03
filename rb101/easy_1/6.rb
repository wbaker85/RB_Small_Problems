def reverse_words(sent)
  sent.split.map do |word|
    word.length >= 5 ? word.reverse : word
  end.join(' ')
end

def reverse_words2(sent)
  sent.gsub(/\b\w{5,}\b/) { |word| word.reverse }
end

puts reverse_words2('Professional')          # => lanoisseforP
puts reverse_words2('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words2('Launch School')         # => hcnuaL loohcS
