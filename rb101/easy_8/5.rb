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

def palindromes(str)
  substrings(str).filter { |str| str == str.reverse && str.length > 1 }
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]