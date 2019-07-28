def rot13(secret_messages)
  # your code here
  secret_messages.collect do |char|
    case char
    when 'a'..'m', 'A'..'M'
      char.ord + 13
    when 'n'..'z', 'N'..'Z'
      char.ord - 13
    else
      char.ord
    end.chr
  end
end

str = 'Why did the chicken cross the road?'
str2 = 'Gb trg gb gur bgure fvqr!'
p rot13(str.split(''))
p rot13(str2.split(''))
