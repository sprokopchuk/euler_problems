def power_digit_sum power = 1000
	n = 2
	digits = (2 ** power).to_s.split ''
	digits.inject {|sum, n| sum.to_i + n.to_i}
end
p power_digit_sum