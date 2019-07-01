# https://leetcode.com/problems/keyboard-row/

# @param {String[]} words
# @return {String[]}
# def find_words(words)
#   rows = [
#     %w[q w e r t y u i o p],
#     %w[a s d f g h j k l],
#     %w[z x c v b n m]
#   ]
#   words.each do |word|
#     row = nil
#     word.split('').each_with_index do |char, index|
#       if index.eql?(0)
#         # find row
#         row = 0 if rows[0].include?(char.downcase)
#         row = 1 if rows[1].include?(char.downcase)
#         row = 2 if rows[2].include?(char.downcase)
#         next
#       end

#       words.delete(word) if word.count(char) > 1

#       words.delete(word) unless rows[row].include?(char)
#     end
#   end
#   words
# end

# # puts find_words(%w[Hello Alaska Dad Peace])
# # puts find_words(%w[cccd a])
# puts find_words(%w[abdfs cccd a qwwewm])

def break_problem
  arr = [
    (1..10).to_a,
    (1..10).to_a,
    (1..10).to_a
  ]
  arr.each_with_index do |ar, index|
    puts "Loop #{index}"
    ar.each do |number|
      puts number.to_s
      break if number == 5
    end
  end
end

break_problem
