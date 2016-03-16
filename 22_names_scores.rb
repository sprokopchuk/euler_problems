# For example, when the list is sorted into alphabetical order, COLIN,
#which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So,
#COLIN would obtain a score of 938 × 53 = 49714.

# What is the total of all the name scores in the file?

def get_score name
  score = 0
  name.each_char do |char|
    score += (char.ord) - "A".ord + 1
  end
  score
end

def find_sum_scores
  file = File.open("names.txt", "r")
  names = file.read.gsub(/"/, "").split(",")
  names.sort!
  sum = 0
  names.each_index do |i|
    sum += (i + 1) * get_score(names[i])
  end
  sum
end

p find_sum_scores