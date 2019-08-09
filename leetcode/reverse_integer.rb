# @param {Integer} x
# @return {Integer}
def reverse(x)
  numbers = x.abs.to_s.split('')
  reverse_numbers = []
  (numbers.size - 1).downto(0).each do |index|
    reverse_numbers << numbers[index].to_i
  end
  if x.negative?
    reverse_numbers_negative = ['-']
    reverse_numbers.each do |number|
      reverse_numbers_negative.push(number)
    end
    reverse_int = reverse_numbers_negative.join('').to_i
  else
    reverse_int = reverse_numbers.join('').to_i
  end
  if reverse_int <= (2**31 - 1) && reverse_int >= (2**31 * -1)
    reverse_int
  else
    0
  end
end

p reverse(123)
p reverse(-123)
p reverse(120)
p reverse(-901_000)
p reverse(1_534_236_469)
