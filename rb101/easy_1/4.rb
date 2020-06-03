def count_occurrences(list)
  counts = {}

  list.each do |item|
    item = item.downcase
    counts[item] = counts[item] || 0
    counts[item] += 1
  end

  counts.each do |key, val|
    puts "#{key} => #{val}"
  end
end


vehicles = [
  'car', 'CAR', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'cAr', 'truck'
]

count_occurrences(vehicles)