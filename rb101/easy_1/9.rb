def sum(int)
  sum = 0

  while (int > 0)
    int, digit = int.divmod(10)
    sum += digit
  end

  sum
end

def sum2(int)
  int.to_s.chars.map(&:to_i).sum
end

puts sum2(23) == 5
puts sum2(496) == 19
puts sum2(123_456_789) == 45
