def triangle(length)
  length.times do |row|
    stars = '*' * (row + 1)
    puts stars.rjust(length)
  end
end


triangle(5)
#     *
#    **
#   ***
#  ****
# *****

triangle(9)
#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********