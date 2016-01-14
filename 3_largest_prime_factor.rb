def largest_prime_factor num = 600851475143
  prime_factors = []
  n = 2
  max_num = num
  while max_num > 1 do
    if max_num % n == 0
      prime_factors << n
      max_num = max_num / n
    end
    n += 1
  end
  prime_factors.max
end

p largest_prime_factor

