# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
  zero_count = 0
  nums.each do |num|
    zero_count += 1 if num.eql?(0)
  end
  nums.delete(0)
  zero_count.times.each { |_num| nums.push(0) }
  nums
end

i = [0, 1, 0, 3, 12]
p move_zeroes(i)
