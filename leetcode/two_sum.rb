# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer[]}
def two_sum(nums, target)
  nums.each_with_index do |num, index|
    nums.size.times.each do |index_inner|
      next if index_inner.eql?(index)

      return [index, index_inner] if (num + nums[index_inner]).eql?(target)
    end
  end
end

arr = [2, 7, 11, 15]
target = 9
puts two_sum(arr, target)

arr =  [1, 2, 3, 9]
target = 11
puts two_sum(arr, target)
