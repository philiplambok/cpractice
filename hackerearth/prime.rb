def prime?(check_number)
  prime_state = true
  2.upto(check_number - 1).each do |number|
    if (check_number % number).eql?(0)
      prime_state = false
      break
    end
  end
  prime_state
end

last_number = gets.chomp.to_i

primes = []
2.upto(last_number).each do |number|
  primes.push(number) if prime?(number)
end

primes.each do |number|
  print "#{number} "
end
puts
