# @param {Integer} x
# @param {Integer} y
# @return {Integer}
def hamming_distance(x, y)
  x_bit = x.to_s(2)
  y_bit = y.to_s(2)
  # creating arrays of both
  diff = (x_bit.length - y_bit.length).abs
  if x_bit.length > y_bit.length
    y_arr = y_bit.split('')
    diff.times.each { y_arr.unshift(0) }
    x_arr = x_bit.split('')
  elsif y_bit.length > x_bit.length
    x_arr = x_bit.split('')
    diff.times.each { x_arr.unshift(0) }
    y_arr = y_bit.split('')
  else
    x_arr = x_bit.split('')
    y_arr = y_bit.split('')
  end
  y_arr = y_arr.map(&:to_i)
  x_arr = x_arr.map(&:to_i)
  distance = 0
  y_arr.each_with_index do |number, index|
    next if number.eql?(x_arr[index])

    distance += 1
  end
  distance
end

p hamming_distance(93, 73)
