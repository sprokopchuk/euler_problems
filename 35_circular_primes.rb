# The number, 197, is called a circular prime because all rotations of the digits: 197, 971, and 719, are themselves prime.

# There are thirteen such primes below 100: 2, 3, 5, 7, 11, 13, 17, 31, 37, 71, 73, 79, and 97.

# How many circular primes are there below one million?
require 'prime'
def count_circular_primes value = 1000000
  num = 0
  Prime.each(value) do |prime|
    num += 1 if circular_prime?(prime)
  end
  num
end

def circular_prime? value
  str = value.to_s
  res = true
  if str.size > 1
    other_str = str
    other_str = replace_chars other_str
    n = str.size - 1
    while n > 0 do
      res &&= Prime.prime? other_str.to_i
      other_str = replace_chars other_str
      n -= 1
    end
    res
  else
    res
  end
end

def replace_chars str
  digit = str.slice! 0
  str.insert(str.size, digit)
end
end_time = Time.now
p count_circular_primes
