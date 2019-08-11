def get_correct_stick(array)
  number_one = 0
  number_two = 0
  result = 0
  state = :number_one
  array.each do |element|
    if element.eql?('+')
      state = :number_two
      next
    end
    if element.eql?('=')
      state = :result
      next
    end
    number_one += 1 if state.eql?(:number_one)
    number_two += 1 if state.eql?(:number_two)
    result += 1 if state.eql?(:result)
  end

  return array.join('') if (number_one + number_two).eql?(result)

  if number_one + number_two < result
    array.delete_at(array.size - 1)
    result -= 1
    return array.join('') if (number_one + number_two).eql?(result)
  end

  number_one += 1
  array.insert(0, '|')
  return array.join('') if (number_one + number_two).eql?(result)

  'Impossible'
end

input = gets.chomp
input_array = input.split('')
puts get_correct_stick(input_array)
