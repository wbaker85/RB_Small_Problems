def halvsies(arr)
  middle = (arr.length / 2.0).ceil
  arr.partition.with_index { |_, idx| idx < middle }
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]