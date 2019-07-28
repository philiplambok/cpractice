def factorial(n)
  result = 1
  1.upto(n).each do |index|
    result *= index
  end
  yield(result)
end

n = 5

factorial(n) do |n|
  puts n
end
