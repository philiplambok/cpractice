# https://leetcode.com/problems/fibonacci-number/

# @param {Integer} n
# @return {Integer}
def fib(n)
  return 0 if n.eql?(0)
  return 1 if n.eql?(1)

  fib(n - 1) + fib(n - 2)
end

puts fib(2)
puts fib(3)
puts fib(4)
