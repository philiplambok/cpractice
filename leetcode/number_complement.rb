# @param {Integer} num
# @return {Integer}
def find_complement(num)
  bin = num.to_s(2)
  bin_rev = ''
  bin.each_char do |char|
    bin_rev += if char.eql?('1')
                 '0'
               else
                 '1'
               end
  end
  bin_rev.to_i(2)
end

p find_complement(5)
p find_complement(1)
