def rotate_array(arr)
  [*arr[1..-1], *arr[0]]
end

def rotate_rightmost_digits(num, count)
  string_num = num.to_s
  first_part = string_num[0..-(count + 1)]
  second_part = string_num[-count..-1]
  (first_part + rotate_array(second_part.split('')).join('')).to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917