def repeat_str(word, n)
  a_counter = 0
  word.each_char do |char|
    a_counter += 1 if char.eql?('a')
  end
  divided = n / word.size
  a_counter *= divided
  mod = n % word.size

  mod.times do |index|
    a_counter += 1 if word[index].eql?('a')
  end
  a_counter
end

p repeat_str('aba', 10)
p repeat_str('a', 1_000_000_000_000)
