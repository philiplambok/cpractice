# @param {Integer[]} heights
# @return {Integer}
def height_checker(heights)
  count = 0
  sorted = heights.sort
  heights.each_with_index do |height, index|
    count += 1 if height != sorted[index]
  end
  count
end
height = [1, 1, 4, 2, 1, 3]
p height_checker(height)
