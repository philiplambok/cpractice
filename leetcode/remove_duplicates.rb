# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  current = nums.first
  nums.each_with_index do |num, index|
    next if index.eql?(0)

    if num.eql?(current)
      nums[index] = nil
    else
      current = num
    end
  end
  nums.delete(nil)
  nums
end

nums = [1, 1, 2]
p remove_duplicates(nums)

nums = [1, 1]
p remove_duplicates(nums)

nums = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4]
p remove_duplicates(nums)
