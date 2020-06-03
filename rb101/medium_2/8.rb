def featured(num)
  if num > 9_876_543_210 
    puts 'Impossible'
    return
  end

  num += 1

  loop do
    num += 1 until num.odd? && num % 7 == 0
    return num if num.to_s.chars == num.to_s.chars.uniq
    num += 14
  end
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
featured(9_999_999_999) # -> There is no possible number that fulfills those requirements