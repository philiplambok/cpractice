def pangrams(string)
  alphabets = ('a'..'z').to_a
  registered = []
  string.each_char do |char|
    char_downcase = char.downcase
    registered << char_downcase if alphabets.include?(char_downcase) && !registered.include?(char_downcase)
  end
  if registered.size.eql?(alphabets.size)
    'pangram'
  else
    'not pangram'
  end
end

p pangrams('We promptly judged antique ivory buckles for the next prize')
p pangrams('We promptly judged antique ivory buckles for the prize')
