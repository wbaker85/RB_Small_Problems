arr = ['Dave', 7, 'Miranda', 3, 'Jason', 11]

new = arr.map.with_index { |val, idx| val.to_i == val ? [arr[idx - 1], val] : [] }
                 .filter { |subArr| subArr.length > 0 }

p new