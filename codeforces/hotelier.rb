def find_zero_index_from_left(array)
  found_index = nil
  array.each_with_index do |element, index|
    if element.eql?(0)
      found_index = index
      break
    end
  end
  found_index
end

def find_zero_index_from_right(array)
  found_index = nil
  (array.size - 1).downto(0).each do |index|
    if array[index].eql?(0)
      found_index = index
      break
    end
  end
  found_index
end

_ = gets.strip.to_i
arrives_code = gets.strip.split('')

codes = Array.new(10, 0)

arrives_code.each do |code|
  if code.eql?('L')
    index = find_zero_index_from_left(codes)
    codes[index] = 1
  elsif code.eql?('R')
    index = find_zero_index_from_right(codes)
    codes[index] = 1
  else
    index = code.to_i
    codes[index] = 0
  end
end

puts codes.join('')
