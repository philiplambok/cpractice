# https://leetcode.com/problems/reverse-words-in-a-string-iii/

# @param {String} s
# @return {String}
def reverse_words(s)
  words = s.split(' ')
  reversed = []

  words.each do |word|
    reversed << word.split('').reverse.join('')
  end
  reversed.join(' ')
end
