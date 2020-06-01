def name(arr)
  arr.sample
end

def activity(arr)
  arr.sample
end

def sentence(str1, str2)
  "#{str1} #{str2}"
end

names = ['Dave', 'Sally', 'George', 'Jessica']
activities = ['walking', 'running', 'cycling']

puts sentence(name(names), activity(activities))
