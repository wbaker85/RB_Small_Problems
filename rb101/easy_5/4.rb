def swap(str)
  str.gsub(/\b(\w)(\w*)(\w)\b/) { |str| "#{$3}#{$2}#{$1}" }
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'