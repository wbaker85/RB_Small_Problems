def center_of(str)
  middle = (str.length / 2.0)
  middle % 1 == 0 ? str[middle.to_i - 1, 2] : str[middle.ceil.to_i - 1]
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'