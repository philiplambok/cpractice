def angry_prof(k, a)
  attendee = 0
  a.each do |number|
    next if number >= 1

    attendee += 1
  end
  if attendee >= k
    'NO'
  else
    'YES'
  end
end

a = [-1, -3, 4, 2]
p angry_prof(3, a)

a = [0, -1, 2, 1]
p angry_prof(2, a)

a = [0, -1, 2, -1]
p angry_prof(2, a)

a = [-58, -29, -35, -18, 43, -28, -76, 43, -13, 6]
p angry_prof(2, a)
