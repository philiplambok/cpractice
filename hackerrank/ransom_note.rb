def ransom_note(magazine, note)
  state = true
  note.each do |word|
    if magazine.include?(word.downcase)
      delete_first_word(magazine, word.downcase)
      next
    end

    state = false
    break
  end
  if state.eql?(false)
    'No'
  else
    'Yes'
  end
end

def delete_first_word(magazine, word)
  index_to_delete = nil
  magazine.each_with_index do |inner_word, index|
    if inner_word.downcase.eql?(word)
      index_to_delete = index
      break
    end
  end
  magazine.delete_at(index_to_delete)
end

magazine = 'give me one grand today night'.split(' ')
note = 'give one grand today'.split(' ')

p ransom_note(magazine, note)

magazine = 'two times three is not four'.split(' ')
note = 'two times two is four'.split(' ')

p ransom_note(magazine, note)

magazine = 'apgo clm w lxkvg mwz elo bg elo lxkvg elo apgo apgo w elo bg'.split(' ')
note = 'elo lxkvg bg mwz clm w'.split(' ')

p ransom_note(magazine, note)
