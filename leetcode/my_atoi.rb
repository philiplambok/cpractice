# @param {String} str
# @return {Integer}
def my_atoi(str)
  int_max = 2**31 - 1
  int_min = -2**31
  str_array = str.split('')
  numbers = ('0'..'9').to_a
  words = ('a'..'z').to_a
  special = ['.', ',']
  signed = ['-', '+']
  filtered_number = ''
  str_array.each_with_index do |char, _index|
    break if words.include?(char)
    break if special.include?(char)

    filtered_number += char if numbers.include?(char) || signed.include?(char)
  end
  filtered_number_to_i = if filtered_number.eql?('')
                           0
                         else
                           if filtered_number[0..1].eql?('+0') || filtered_number[0..1].eql?('-0')
                             0
                           else
                             filtered_number.to_i
                           end
                         end
  if filtered_number_to_i >= int_min && filtered_number_to_i <= int_max
    filtered_number_to_i
  else
    filtered_number_to_i.positive? ? int_max : int_min
  end
end

p my_atoi('  -42')
p my_atoi('4193 with words')
p my_atoi('words with 987')
p my_atoi('   +91283472332 this is word')
p my_atoi('3.21')
p my_atoi('0.42')
p my_atoi('2412word what')
p my_atoi('   +0 123')
p my_atoi('  0000000000012345678')
