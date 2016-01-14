def sum_even_fibonacci stop_value = 4000000
  x = []
  x[0] = 1
  x[1] = 2
  sum = x[1]
  n = 2
  loop do
    x[n] = x[n - 2] + f[n - 1]
    break if x[n] > stop_value
    sum += x[n] if x[n].even?
    n += 1
  end
  sum
end

p sum_even_fibonacci

