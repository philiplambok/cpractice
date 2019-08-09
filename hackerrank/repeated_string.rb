def repeated_string_match(a, b)
  counter = 0
  found = false
  loop do
    puts a
    if a.include?(b)
      found = true
      counter += 1
      break
    end
    a += a
    counter += 1
  end
  if found.eql?(true)
    counter
  else
    -1
  end
end

a = 'abcd'
b = 'cdabcdab'

p repeated_string_match(a, b)

a = 'abc'
b = 'cabcabca'

p repeated_string_match(a, b)
