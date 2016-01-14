require 'prime'
def summation_of_primes num = 2000000
	primes = []
	Prime.each(num) do |x|
		primes << x
	end
	primes.reduce(:+)
end
p summation_of_primes