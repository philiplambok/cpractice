# https://leetcode.com/problems/keyboard-row/

# @param {String[]} words
# @return {String[]}
def find_words(words)
  filtered_words = []
  words.each do |word|
    str_ord = word.split('').map(&:ord)

    stop = false
    str_ord.each do |char|
      if str_ord.count(char) > 1
        stop = true
        break
      end
    end
    filtered_words << word if stop.eql?(false)
  end
  filtered_words
end

puts find_words(%w[Hello Alaska Dad Peace])
