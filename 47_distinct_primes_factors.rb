require 'prime'
def distinct_primes_factors numbers = 4
  n = 1
  nums = {}
  while nums.size < numbers do
    divisors = Prime.prime_division(n)
    divs = divisors.collect {|n| n.inject(:*)}
    if divs.size >= numbers
      if nums.size > 0 && !nums.has_key?((n - 1).to_s)
       nums = {}
      else
        nums[n.to_s] = divs
      end
    end
    n += 1
  end
  nums.keys[0]
end

p distinct_primes_factors

