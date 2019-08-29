def lonely_integer(numbers)
  meta_number = {}
  numbers.each do |number|
    if meta_number.key?(number)
      meta_number[number] += 1
    else
      meta_number[number] = 1
    end
  end

  meta_number.each do |key, value|
    if value.eql?(1)
      puts key
      break
    end
  end
end

lonely_integer([1, 2, 3, 3, 1])
