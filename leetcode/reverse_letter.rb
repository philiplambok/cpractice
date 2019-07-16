# @param {String} s
# @return {String}
def reverse_only_letters(s)
  chars = ('a'..'z').to_a + ('A'..'Z').to_a + (0..9).to_a
  letters = []
  special = []
  s.each_char.with_index do |char, index|
    if chars.include?(char)
      letters << char
    else
      special << { index: index, char: char }
    end
  end
  letters = letters.reverse
  special.each do |meta|
    letters.insert(meta[:index], meta[:char])
  end
  letters.join('')
end

input = 'ab-cd'
p reverse_only_letters(input)

input = 'a-bC-dEf-ghIj'
p reverse_only_letters(input)

input = 'Test1ng-Leet=code-Q!'
output = reverse_only_letters(input)
p output.eql?('Qedo1ct-eeLg=ntse-T!')
