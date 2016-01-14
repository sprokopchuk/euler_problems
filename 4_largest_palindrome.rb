def largest_palindrome
  i = 999
  max = 1
  while i >= 100 do
  	j = i
  	while j >= 100  do 
  		if is_palindrome? i*j
  			if i*j > max
  				max = i * j
  			end
  		end
  		j -= 1
    end
    i -= 1
  end
  max
end

def is_palindrome? num
	str = num.to_s
	str == str.reverse 
end
p largest_palindrome

# максимальное число 999 * 999