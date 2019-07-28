def sum_terms(n)
  # your code here
  (0..n).inject(0, :+)
end

n = 3
p sum_terms(n)
