def day_of_programmer(year)
  if year > 1984 && (year % 4).zero? && !(year % 100).zero?
    "12.09.#{year}"
  else
    "13.09.#{year}"
  end
end

p day_of_programmer(2017)
p day_of_programmer(2016)
p day_of_programmer(1800)
p day_of_programmer(2100)
p day_of_programmer(1700)
