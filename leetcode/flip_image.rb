# https://leetcode.com/problems/flipping-an-image/

# @param {Integer[][]} a
# @return {Integer[][]}
def flip_and_invert_image(a)
  a.each(&:reverse!)
  # invert
  a.each do |arr|
    arr.each_with_index do |el, index|
      if el.eql?(0)
        arr[index] = 1
        next
      end

      if el.eql?(1)
        arr[index] = 0
        next
      end
    end
  end
end

a = [[1, 1, 0], [1, 0, 1], [0, 0, 0]]
p flip_and_invert_image(a)
b = [[1, 1, 0, 0], [1, 0, 0, 1], [0, 1, 1, 1], [1, 0, 1, 0]]
p flip_and_invert_image(b)
