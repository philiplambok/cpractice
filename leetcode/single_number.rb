# https://leetcode.com/problems/single-number/

# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
  return nums.first if nums.size.eql?(1)

  saved = []
  nums.each do |num|
    if saved.include?(num)
      saved.delete(num)
    else
      saved << num
    end
  end
  saved.first
end
