def get_paginate(page_count, current_page, proper)
  prev_numbers = []
  index = 1
  proper.times.each do
    number = current_page - index
    break if number.eql?(0)

    prev_numbers << number
    index += 1
  end
  next_numbers = []
  index = 1
  proper.times.each do
    number = current_page + index
    break if number > page_count

    next_numbers << number
    index += 1
  end
  prev_simbol = nil
  prev_simbol = '<<' if !prev_numbers.empty? && !prev_numbers.min.eql?(1)
  next_simbol = nil
  next_simbol = ' >>' if !next_numbers.empty? && !next_numbers.last.eql?(page_count)
  puts generate_paginate(prev_simbol, next_simbol, prev_numbers, next_numbers, current_page)
end

def generate_paginate(prev_simbol, next_simbol, prev_numbers, next_numbers, current_number)
  paginate_string = ''
  paginate_string += prev_simbol unless prev_simbol.nil?
  prev_numbers.sort.each do |number|
    paginate_string += " #{number}"
  end
  paginate_string += " (#{current_number})"
  next_numbers.sort.each do |number|
    paginate_string += " #{number}"
  end
  paginate_string += next_simbol unless next_simbol.nil?
  paginate_string.strip
end

input = gets.chomp

intput_array = input.split(' ').map(&:to_i)

get_paginate(intput_array[0], intput_array[1], intput_array[2])
