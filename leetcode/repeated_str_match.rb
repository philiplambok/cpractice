# @param {String} a
# @param {String} b
# @return {Integer}
def repeated_string_match(a, b)
  found = false
  counter = 1
  max_loop = a.length

  max_loop.times.each do
    if a.include?(b)
      found = true
      break
    end

    a += a
    counter += 1
  end

  return -1 if found.eql?(false)

  counter
end

a = 'abcd'
b = 'cdabcdab'
p repeated_string_match(a, b)

a = 'baaaabbbba'
b = 'bbaaaabbbbaabaaaabbbbaabaaaabbbbaabaaaabbbbaabaaaabbbbabbaaaabbbbabbaaaabbbbabbaaaabbbbabbaaaabbbbaa'

p repeated_string_match(a, b)
