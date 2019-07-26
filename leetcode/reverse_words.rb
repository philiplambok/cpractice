# @param {String} s
# @return {String}
def reverse_words(s)
  words = s.split(' ')
  filtered_words = words.map(&:strip)
  reversed_words = filtered_words.reverse
  reversed_words.join(' ')
end

p reverse_words('a good   example')
p reverse_words('  hello world!  ')
