# https://leetcode.com/problems/number-of-lines-to-write-string/

# @param {Integer[]} widths
# @param {String} s
# @return {Integer[]}
def number_of_lines(widths, s)
  line = 1
  width = 0
  s.split('').each_with_index do |char, _index_loop|
    index = char.ord - 97
    char_size = widths[index]
    if (width + char_size) > 100
      line += 1
      width = char_size
    elsif width + char_size == 100
      line += 1
      width = 0
    else
      width += char_size
    end
  end
  [line, width]
end

width = [10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10]
s = 'abcdefghijklmnopqrstuvwxyz'

puts number_of_lines(width, s)

width = [4, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10]
s = 'bbbcccdddaaa'
puts number_of_lines(width, s)
