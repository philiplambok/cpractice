def take(array, start = 1)
  array[start..-1]
end

p take([1, 2, 3], 1)
p take([1, 2, 3], 2)
p take([1, 2, 3])
