def substrings_at_start(str)
  arr = []
  str.length.times do |idx|
    arr << str[0, idx + 1]
  end
  arr
end

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']