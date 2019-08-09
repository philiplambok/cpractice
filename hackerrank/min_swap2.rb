def min_swap(arr)
  swap = 0
  last_element = arr.size - 1
  arr.each_with_index do |_number, index|
    next if index.eql?(last_element)
    # # min_element = find_min_element(arr[index..-1])
    # meta_min = find_meta_min(index, arr)
    # next if meta_min[:element].eql?(number)

    # index_min = meta_min[:index]
    # arr[index], arr[index_min] = arr[index_min], arr[index]
    # swap += 1
  end
  swap
end

def find_meta_min(start, arr)
  min_element = arr[start]
  min_index = start
  index_element = start
  arr[start..-1].each do |element|
    if element < min_element
      min_element = element
      min_index = index_element
    end
    index_element += 1
  end
  { element: min_element, index: min_index }
end

def find_index_element(arr, element)
  min_index = nil
  arr.each_with_index do |number, index|
    if number.eql?(element)
      min_index = index
      break
    end
  end
  min_index
end

# return
def find_min_element(arr)
  min = arr.first
  arr.each_with_index do |number, index|
    next if index.eql?(0)

    min = number if number < min
  end
  min
end

p min_swap([2, 3, 4, 1, 5])
