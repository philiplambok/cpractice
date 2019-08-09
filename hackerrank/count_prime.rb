def count_primes(number)
  numbers = (2..number - 1).to_a

  counter = 0
  numbers.each do |num|
    delete_divided(num, numbers)
    counter += 1
  end
  counter
end

def delete_divided(divided, numbers)
  numbers.each_with_index do |num, index|
    next if num.eql?(divided)

    numbers.delete_at(index) if (num % divided).eql?(0)
  end
end

p count_primes(10)
p count_primes(2)
p count_primes(499_979)
