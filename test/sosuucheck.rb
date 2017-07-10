def prime? (number)
  for i in 2..number
    x = number % i
    if x == 0
      return true
    end
  end
  return false
end

a = gets.to_i
s = prime?(a)
if s == true
  puts '素数です。'
else
  puts '素数ではない。'
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