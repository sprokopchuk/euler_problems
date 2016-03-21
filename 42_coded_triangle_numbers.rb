def coded_triangle_numbers
  file = File.open("words.txt", "r")
  words = file.read.gsub(/"/, "").split(",")
  sum = 0
  words.each do |word|
    number = get_number(word)
    sum += 1 if triangle?(number)
  end
  sum
end

def triangle? number
  n = 1
  res = 0
  while res < number do
    res = 0.5 * n * (n + 1)
    n += 1
  end
  res.eql? number.to_f
end

def get_number word
  number = 0
  word.each_char do |char|
    number += (char.ord) - "A".ord + 1
  end
  number
end

p triangle? 55
p triangle? 28
p triangle? 30
p triangle? 42
p coded_triangle_numbers