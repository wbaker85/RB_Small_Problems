def substrings_at_start(str)
  arr = []
  str.length.times do |idx|
    arr << str[0, idx + 1]
  end
  arr
end

def substrings(string)
  arr = []
  string.length.times do |idx|
    sub = string[idx..-1]
    arr.concat(substrings_at_start(sub))
  end
  arr
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]