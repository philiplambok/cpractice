# @param {Integer[]} nums
# @return {Integer}
def remove_duplicates(nums)
  nums.sort.uniq
end

nums = [1, 1, 2]
p remove_duplicates(nums)

nums = [0, 0, 1, 1, 1, 2, 2, 3, 3, 4]
p remove_duplicates(nums)
