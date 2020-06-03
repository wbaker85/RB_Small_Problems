def short_long_short(str1, str2)
  strings = [str1, str2].sort_by { |str| str.length }
  "#{strings[0]}#{strings[1]}#{strings[0]}"
end


p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"