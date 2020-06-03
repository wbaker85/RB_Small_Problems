def word_cap(str)
  str.split.map { |word| word.capitalize }.join(' ')
end

p word_cap('this is a "quoted" word')

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'