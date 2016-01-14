def multiples_3_and_5
  n = 1...1000
  sum = 0
  n.each do |num|
    sum += num if num % 3 == 0 || num % 5 == 0
  end
  sum
end

p multiples_3_and_5
