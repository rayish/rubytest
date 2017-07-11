def prime? (number)
  for i in 2...number
    if number % i == 0
      return false
    end
  end
  true #returnは省略可能
end

a = gets.to_i
s = prime?(a)
if s == true
  puts '素数です。'
else
  puts '素数ではない。'
end
puts'----------------------------------------------------------------'
#素数の別解
def prime2? (number)
  return true if num <= 2
  2.upto(number - 1) do |i|
    if number % i == 0
      retrun false
    end
  end
  true
end
puts'----------------------------------------------------------------'

def sum_ary(a, b)
  c = []
  for i in 0...a.size()
    c << a[i] + b[i]
  end
  return c
end

a = [ 2, 3, 5, 5 ]
b = [ 4, 7, 9, 4 ]

c = sum_ary(a, b)
p c

#別解
def sum_arry(n, m)
  r = []
  n.each_with_index do |item, idx|
    r << item + m[idx]
  end
end