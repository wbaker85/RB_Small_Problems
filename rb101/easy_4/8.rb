def string_to_integer(str)
  str.chars.map { |char| char.ord - 48 }.reverse
    .each_with_index.reduce(0) do |memo, (num, idx)|
      memo += num * (10**idx)
    end
end

def string_to_signed_integer(str)
  if str.start_with?('-')
    0 - string_to_integer(str[1..-1])
  elsif str.start_with?('+')
    string_to_integer(str[1..-1])
  else
    string_to_integer(str)
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100