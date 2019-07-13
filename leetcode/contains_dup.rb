# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
  uniq_nums = nums.uniq
  if nums.size.eql?(uniq_nums.size)
    false
  else
    true
  end
end

p contains_duplicate([1, 2, 3, 1])
p contains_duplicate([1, 2, 3, 4])
