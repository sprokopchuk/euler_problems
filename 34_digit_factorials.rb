def digit_factorials value = 10000000
  n = 3
  nums = []
  while n <= value do
    sum_facts = 0
    n.to_s.each_char do |c|
      sum_facts += factorial c.to_i
    end
    nums << n if n.eql? sum_facts
    n += 1
  end
  nums.inject(:+)
end



def factorial number
  f = 1
  res = 1
  while f <= number do
    res *= f
    f += 1
  end
  res
end


p digit_factorials


