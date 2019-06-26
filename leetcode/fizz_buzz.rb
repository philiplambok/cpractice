# https://leetcode.com/problems/fizz-buzz/

# @param {Integer} n
# @return {String[]}
def fizz_buzz(n)
  arr = []
  (1..n).each do |number|
    if (number % 3 == 0) && (number % 5 == 0)
      arr << 'FizzBuzz'
      next
    end

    if number % 3 == 0
      arr << 'Fizz'
      next
    end

    if number % 5 == 0
      arr << 'Buzz'
      next
    end

    arr << number
  end
  arr
end

puts fizz_buzz(15)
