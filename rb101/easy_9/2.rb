def twice(num)
  def same_both_sides?(num)
    string_num = num.to_s
    half_length = string_num.length / 2
    string_num[0, half_length] == string_num[half_length..-1]
  end

  if num.to_s.length.even? && same_both_sides?(num)
    num
  else
    num * 2
  end
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10