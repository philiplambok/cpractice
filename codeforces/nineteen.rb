def count_nineteen_words(words)
  nineteen_word = 'nineteen'
  start_index = 0
  counter = 0
  words_array = words.split('')
  loop do
    if words_array.include?(nineteen_word[start_index])
      delete_first_element(words_array, nineteen_word[start_index])
      if start_index.eql?(nineteen_word.size - 1)
        counter += 1
        start_index = 0
      else
        start_index += 1
      end
    else
      break
    end
  end
  counter
end

def delete_first_element(array, search_element)
  found_index = nil
  array.each_with_index do |element, index|
    if element.eql?(search_element)
      found_index = index
      break
    end
  end
  return false if found_index.eql?(nil)

  array.delete_at(found_index)
end

words = gets.chomp

counter = count_nineteen_words(words)

puts counter
