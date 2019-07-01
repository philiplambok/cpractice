# https://leetcode.com/problems/keyboard-row/

# @param {String[]} words
# @return {String[]}
def find_words(words)
  rows = [
    %w[q w e r t y u i o p],
    %w[a s d f g h j k l],
    %w[z x c v b n m]
  ]
  deleted_words = []
  words.each do |word|
    row = nil
    word.each_char.with_index(0) do |char, index|
      if index.eql?(0)
        row = 0 if rows[0].include?(char.downcase)
        row = 1 if rows[1].include?(char.downcase)
        row = 2 if rows[2].include?(char.downcase)
        next
      end

      next if rows[row].include?(char.downcase)

      deleted_words << word
      break
    end
  end
  words - deleted_words
end

words = %w[Hello Alaska Dad Peace]
p find_words(words)
