require 'prime'
def find_sum_truncatable_primes nums = 11
  t_primes = []
  Prime.each do |prime|
    if truncatable_prime?(prime)
      t_primes << prime
      nums -= 1
      break if nums == 0
    end
  end
  t_primes.inject :+
end

def truncatable_prime? value
  str = value.to_s
  res = true
  if str.length > 1
    l_str = str.clone
    while str.length > 1 do
      if l_str.length > 1
        l_str.slice! 0
        res &&= Prime.prime? l_str.to_i
      else
        str.slice! str.size - 1
        res &&= Prime.prime? str.to_i
      end
    end
    res
  else
    res &&= false
  end
end

p truncatable_prime? 3797
p find_sum_truncatable_primes