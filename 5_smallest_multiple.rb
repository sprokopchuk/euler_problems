def smallest_multiple range = 1..20
  values = 1
  arr = range.to_a
  arr.each_index do |i|
    while i > 0
      if values % arr[i] != 0
        n = 1
        loop do
          n += 1
          break if arr[i] % n == 0 || n > arr[i]
        end
        values *= n
      end
      i -= 1
    end
  end
  values
end

p smallest_multiple


# will be recursive method
def smallest_multiple_rec range = 1..20, value = 1
  return value if range.size == 1
  f, l = range.first, range.last
  value = value.lcm f
  smallest_multiple_rec((f + 1)..l, value)
end

p smallest_multiple_rec
