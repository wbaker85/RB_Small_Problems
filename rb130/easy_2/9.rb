def each_cons(arr)
  return nil if arr.size == 0

  counter = 0

  until counter == arr.size - 1
    yield(arr[counter], arr[counter + 1])
    counter += 1
  end

  nil
end

hash = {}
result = each_cons([1, 3, 6, 10]) do |value1, value2|
  hash[value1] = value2
end
result == nil
p hash
p hash == { 1 => 3, 3 => 6, 6 => 10 }

hash = {}
result = each_cons([]) do |value1, value2|
  hash[value1] = value2
end
p hash == {}
result == nil

hash = {}
result = each_cons(['a', 'b']) do |value1, value2|
  hash[value1] = value2
end
p hash == {'a' => 'b'}
result == nil