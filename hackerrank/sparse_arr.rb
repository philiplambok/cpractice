def sparse_arr(strings, queries)
  results = []
  queries.each do |query|
    result = strings.count(query)

    results << result
  end
  results
end

strings = %w[def de fgh]
queryies = %w[de lmn fgh]
p sparse_arr(strings, queryies)
