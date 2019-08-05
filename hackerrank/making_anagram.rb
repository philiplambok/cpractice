def make_anagram(a, b)
  anagram = []
  deleted_char = 0
  if a.size < b.size
    master = a.split('')
    dictionary = b.split('')
  else
    master = b.split('')
    dictionary = a.split('')
  end
  dictionary_clone = dictionary.dup
  master.each do |char|
    if dictionary_clone.include?(char)
      anagram.push(char)
      delete_first_element(dictionary_clone, char)
    else
      deleted_char += 1
    end
  end
  anagram_clone = anagram.dup
  dictionary.each do |char|
    if anagram_clone.include?(char)
      delete_first_element(anagram_clone, char)
      next
    end

    deleted_char += 1
  end

  deleted_char
end

def delete_first_element(array, element_to_delete)
  index_to_delete = nil
  array.each_with_index do |element, index|
    if element.eql?(element_to_delete)
      index_to_delete = index
      break
    end
  end

  return false if index_to_delete.eql?(nil)

  array.delete_at(index_to_delete)
end

# a = 'cde'
# b = 'abc'

# p make_anagram(a, b)

# a = 'cde'
# b = 'dcf'

# p make_anagram(a, b)

a = 'fcrxzwscanmligyxyvym'
b = 'jxwtrhvujlmrpdoqbisbwhmgpmeoke'

p make_anagram(a, b)
