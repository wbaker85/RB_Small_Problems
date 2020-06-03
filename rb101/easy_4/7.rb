def string_to_integer(str)
  str.chars.map { |char| char.ord - 48 }.reverse
    .each_with_index.reduce(0) do |memo, (num, idx)|
      memo += num * (10**idx)
    end
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570