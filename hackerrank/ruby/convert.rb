def convert_temp(number, input_scale:, output_scale:)
  result = number
  if input_scale.eql?('celsius')
    result = number + 237.15 if output_scale.eql?('kelvin')
    result = number * 9 / 5 + 32 if output_scale.eql?('fahrenheit')
  end

  if input_scale.eql?('fahrenheit')
    result = (number - 32) * 5 / 9 if output_scale.eql?('celsius')

    result = (number - 32) * 5 / 9 + 273.15 if output_scale.eql?('kelvin')
  end

  if input_scale.eql?('kelvin')
    result = number - 273.15 if output_scale.eql?('celsius')

    result = (number - 273.15) * 9 / 5 + 32 if output_scale.eql?('fahrenheit')
  end

  result.to_f.round(2)
end

# p convert_temp(0, input_scale: 'celsius', output_scale: 'kelvin')
# p convert_temp(0, input_scale: 'celsius', output_scale: 'fahrenheit')

def func_find(hash)
  # Check and return the first object that satisfies either of the following properties:
  #   1. There is a [key, value] pair where the key and value are both Integers and the value is < 20
  #   2. There is a [key, value] pair where the key and value are both Strings and the value starts with `a`.
  hash.find do |key, value|
    if key.is_a?(Integer) && value.is_a?(Integer)
      return [key, value] if value < 20
    end

    if key.is_a?(String) && value.is_a?(String)
      return [key, value] if value[0].eql?('a')
    end

    []
  end
end

hash = { 'a' => 1, 'b' => 2, 'c' => 3, 'a' => 'ab' }

p func_find(hash)
