def word_to_digit(string)
  word_chars = %w(zero one two three four five six seven eight nine)

  word_chars.each do |word|
    string.gsub!(word, word_chars.index(word).to_s)
  end

  string
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'