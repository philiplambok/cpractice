def find_median(arr)
  sorted_arr = arr.sort
  index_med = arr.size / 2
  sorted_arr[index_med]
end

str = '0 1 2 4 6 5 3'
arr = str.split(' ')
arr = arr.map(&:to_i)
p find_median(arr)
