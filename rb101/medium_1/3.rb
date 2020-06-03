def rotate_array(arr)
  [*arr[1..-1], *arr[0]]
end

def rotate_rightmost_digits(num, count)
  string_num = num.to_s
  first_part = string_num[0..-(count + 1)]
  second_part = string_num[-count..-1]
  (first_part + rotate_array(second_part.split('')).join('')).to_i
end

def max_rotation(num)
  original_length = num.to_s.length 
  (original_length - 1).times do |iter|
    num = rotate_rightmost_digits(num, original_length - iter)
  end
  num
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845