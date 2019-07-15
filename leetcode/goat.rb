# @param {String} s
# @return {String}
def to_goat_latin(s)
  consonant = %w[a i u e o]
  a_counter = 1
  s_arr = s.split(' ')
  s_arr.each_with_index do |word, index|
    if consonant.include?(word[0].downcase)
      a_word = 'a' * a_counter
      s_arr[index] = "#{word}ma#{a_word}"
    else
      first_char = word[0]
      a_word = 'a' * a_counter
      word[0] = ''
      s_arr[index] = "#{word}#{first_char}ma#{a_word}"
    end
    a_counter += 1
  end
  s_arr.join(' ')
end

s = 'I speak Goat Latin'
p to_goat_latin(s)

s = 'The quick brown fox jumped over the lazy dog'
ex = to_goat_latin(s)
