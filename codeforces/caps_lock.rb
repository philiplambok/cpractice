word = gets.strip

filtered_word = ''

0.upto(word.size - 1).each do |index|
  filtered_word += if index.eql?(0)
                     word[index].upcase
                   else
                     word[index].downcase
                   end
end

puts filtered_word
