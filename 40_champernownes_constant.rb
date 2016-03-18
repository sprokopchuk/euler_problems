def champernownes_constant length = 1000000
  fractions = ""
  nums = []
  n = 1
  k = 1
  while fractions.size <= length do
    str_num = n.to_s
    fractions << str_num
    if fractions[k - 1]
      nums << fractions[k - 1]
      k *= 10
    end
    n += 1
  end
  (nums.map{|s| s.to_i}).inject(:*)
end

p champernownes_constant