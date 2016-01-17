# a = m**2 - n**2
#b = 2 * m * n
#c  = m**2 + n**2

def find_m_and_n sum
  m =  1
  while m < sum do
    n = 1
    while n < m do
      return [m, n] if (2*(m**2) + 2*m*n) == sum
      n += 1
    end
    m += 1
  end
end


def pythagorean_triplet sum = 1000
  arr = find_m_and_n sum
  (arr[0]**2 - arr[1]**2)*2*arr[0]*arr[1]*(arr[0]**2 + arr[1]**2)
end

p pythagorean_triplet