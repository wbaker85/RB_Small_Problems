def merge(arr1, arr2)
  arr1 = arr1.clone
  arr2 = arr2.clone

  output = []

  while arr1[0] && arr2[0]
    output.push(arr1[0] <= arr2[0] ? arr1.shift : arr2.shift)
  end

  output.concat(arr1[0] ? arr1 : arr2)
end

def merge_sort(arr)
  return arr if arr.length == 1

  arr1 = arr[0..arr.length / 2 - 1]
  arr2 = arr[arr.length / 2..-1]

  merge(merge_sort(arr1), merge_sort(arr2))
end

p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]