def reverse!(arr)
  middle = arr.length / 2

  middle.times do |idx|
    arr[idx], arr[arr.length - idx - 1]  = arr[arr.length - idx - 1], arr[idx]
  end

  arr
end


list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"]
p list == ["c", "d", "e", "b", "a"]

list = ['abc']
p reverse!(list) == ["abc"]
p list == ["abc"]

list = []
p reverse!(list) == []
p list == []