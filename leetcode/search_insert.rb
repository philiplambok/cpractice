# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
  pindex = 0
  nums.each_with_index do |num, index|
    if num.eql?(target)
      pindex = index
      break
    end

    if num > target
      pindex = index
      break
    end

    pindex = index + 1
  end
  pindex
end

input = [1, 3, 5, 6]
p search_insert(input, 5)

input = [1, 3, 5, 6]
p search_insert(input, 2)

input = [1, 3, 5, 6]
p search_insert(input, 7)
p search_insert(input, 0)
