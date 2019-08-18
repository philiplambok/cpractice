typed_word = gets.strip

hello_word = 'hello'

index = 0
last_index = hello_word.size - 1
state = false
typed_word.each_char do |char|
  if hello_word[index].eql?(char)
    if index.eql?(last_index)
      state = true
      break
    else
      index += 1
    end
  end
end

if state.eql?(true)
  puts 'YES'
else
  puts 'NO'
end
