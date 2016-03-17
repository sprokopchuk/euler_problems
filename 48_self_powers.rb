def self_powers value = 1000
  sum = 0
  n = 1
  while n <= value do
    sum += n ** n
    n += 1
  end
  str = sum.to_s
  str.slice(str.size - 10, 10).to_i
end

p self_powers