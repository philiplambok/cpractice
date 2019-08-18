feel_number = gets.strip.to_i
feels = []

index = 1
feel_number.times do
  if index.odd?
    feels.push('I hate')
  else
    feels.push('I love')
  end
  index += 1
end

output = feels.join(' that ')
output += ' it'
puts output
