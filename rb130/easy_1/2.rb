def compute(arg)
  block_given? ? yield(arg) : 'Does not compute.'
end

p compute(10) { |n| n + 5 + 3 } == 18
p compute('sss') { |char| char + 'a' + 'b' } == 'sssab'
p compute([]) == 'Does not compute.'
