def merge(arr1, arr2)
  arr1 = arr1.clone
  arr2 = arr2.clone

  output = []

  while arr1[0] && arr2[0]
    output.push(arr1[0] <= arr2[0] ? arr1.shift : arr2.shift)
  end

  output.concat(arr1[0] ? arr1 : arr2)
end

p merge([1, 5, 9], [2, 6, 8]) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]
