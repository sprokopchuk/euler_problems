def digit_fifth_powers number = 1000000
  nums = []
  while number > 1 do
    product = (number.to_s.split("").map {|digit| digit.to_i ** 5}).inject :+
    nums << number if product == number
    number -= 1
  end
  nums.inject :+
end

p digit_fifth_powers