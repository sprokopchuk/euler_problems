# dont work
def prime_number n = 2, pos = 10001, x = []
  x[0] = 2
  while x.size != pos do
    x.each do |i|
      if n % i == 0
        n += 1 and break
      elsif i == x.last
        x << n
      end
    end
  end
  x.last
end

p prime_number
