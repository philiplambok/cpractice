def picking_numbers(a)
  max_storage = 0
  numbers = []
  a_sorted = a.sort
  last_index = a_sorted.size - 1
  a_sorted.each_with_index do |number, index|
    numbers_min = numbers.min || 0
    if (numbers_min - number).abs <= 1
      numbers << number
      if index.eql?(last_index)
        max_storage = numbers.size if numbers.size > max_storage
      end
    else
      max_storage = numbers.size if numbers.size > max_storage
      numbers = [number]
    end
    break if max_storage.eql?(5)
  end
  max_storage
end

a = [1, 1, 2, 2, 4, 4, 5, 5, 5]
p picking_numbers(a)

a = [4, 6, 5, 3, 3, 1]
p picking_numbers(a)

a = [1, 2, 2, 3, 1, 2]
p picking_numbers(a)
