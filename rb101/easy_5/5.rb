def cleanup(str)
  str.gsub(/[^a-z]+/i, ' ')
end

p cleanup("---what's my +*& line?") == ' what s my line '