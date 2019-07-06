# @param {Integer[]} arr
# @return {Void} Do not return anything, modify arr in-place instead.
def duplicate_zeros(arr)
  skip = nil
  arr.each_with_index do |num, index|
    if skip.eql?(index)
      skip = nil
      next
    end

    next unless num.eql?(0)

    arr.insert(index, 0)
    arr.pop
    skip = index + 1
  end
  arr
end

p duplicate_zeros([1, 0, 2, 3, 0, 4, 5, 0])
p duplicate_zeros([1, 2, 3])
p duplicate_zeros([1, 0, 0, 2, 4, 5])
