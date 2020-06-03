def print_in_box(str)
  length = str.length

  puts '+' + '-' * (length + 2) + '+'
  puts '|' + ' ' * (length + 2) + '|'
  puts '| ' + str + ' |'
  puts '|' + ' ' * (length + 2) + '|'
  puts '+' + '-' * (length + 2) + '+'
end


print_in_box('To boldly go where no one has gone before.')
# +--------------------------------------------+
# |                                            |
# | To boldly go where no one has gone before. |
# |                                            |
# +--------------------------------------------+

print_in_box('')
# +--+
# |  |
# |  |
# |  |
# +--+