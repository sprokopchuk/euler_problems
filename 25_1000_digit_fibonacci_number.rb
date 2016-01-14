def digit_fibonacci_number digits = 1000, a = 1, b = 1, arr_nums = []
	b == 1 ? arr_nums[1] = b : arr_nums << b
	if b.to_s.length == digits 
		arr_nums.length
	else
		digit_fibonacci_number digits, b, a + b, arr_nums
	end
end

p digit_fibonacci_number