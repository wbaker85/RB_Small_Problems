def interleave(arr1, arr2)
  new_arr = []
  arr1.each.with_index do |val, idx|
    new_arr << val
    new_arr << arr2[idx]
  end
  new_arr
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']