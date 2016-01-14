def factorial_digit_sum n = 100
	i = 1..n
	fact = 1
	i.each do |x|
		fact *= x 
	end
	digits = fact.to_s.split ''
	digits.inject {|sum, n| sum.to_i + n.to_i}
end
p factorial_digit_sum