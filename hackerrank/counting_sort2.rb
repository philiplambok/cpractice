def counting_sort(array)
  counters = Array.new(100, 0)
  array.each do |index|
    counters[index] += 1
  end
  sorted = []
  counters.each_with_index do |counter, index|
    next if counter.eql?(0)

    sorted.push(*Array.new(counter, index))
  end
  sorted
end

unsorted = [1, 1, 3, 2, 1]

sorted = counting_sort(unsorted)
p sorted
