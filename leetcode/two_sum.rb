# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  nums.each_with_index do |num, index|
    expected_pair = target - num
    if nums.include?(expected_pair) && nums.find_index(expected_pair) != index
      return [index, nums.find_index(expected_pair)]
    end
  end
end

arr = [2, 7, 11, 15]
target = 9
p two_sum(arr, target)

arr =  [1, 2, 3, 9]
target = 11
p two_sum(arr, target)

arr = [3, 2, 4]
target = 6
p two_sum(arr, target)
