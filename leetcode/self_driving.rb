#  https://leetcode.com/problems/self-dividing-numbers/submissions/

# @param {Integer} left
# @param {Integer} right
# @return {Integer[]}
def self_dividing_numbers(left, right)
  filtered = []
  left.upto(right).each do |number|
    state = true
    number.to_s.each_char do |char|
      char_i = char.to_i

      if char_i.eql?(0)
        state = false
        break
      end

      next if (number % char_i).zero?

      state = false
      break
    end
    filtered << number if state.eql?(true)
  end
  filtered
end

puts self_dividing_numbers(1, 22)
