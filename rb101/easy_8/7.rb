def repeater(str)
  str.gsub(/./) { |char| char + char }
end

p repeater('Hello') == "HHeelllloo"
p repeater("Good job!") == "GGoooodd  jjoobb!!"
p repeater('') == ''