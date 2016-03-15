def get_term number
  (1..number).inject(:+)
end

def get_divisors value
  divisors = []
  n = 1
  while n <= value ** 0.5
    if value.modulo(n) == 0
      divisors << n
      divisors << value / n unless value / n == n
    end
    n += 1
  end
  divisors.sort
end

n = 1
number = 1
num_divisors = 1
while n < 500 do
  num_divisors = get_divisors(get_term number).size
  if num_divisors > 499
    n = num_divisors
  else
    number += 1
  end
end
p get_term(number)