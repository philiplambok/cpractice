def add_digits(digit)
  digit_s = digit.to_s
  fix_num = digit
  loop do
    fix_num = 0
    digit_s.each_char do |char|
      fix_num += char.to_i
    end
    break if fix_num < 10

    digit_s = fix_num.to_s
  end
  fix_num
end

p add_digits(38)
