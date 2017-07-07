def triangle(x)
  x[:a] + x[:b] + x[:c]
end

a = {:a => 5, :b => 2, :c => 5}  #a = { a: 5, b: 2, c: 5 } <-今はこのカタチ
t = triangle(a)
puts "三角形の周長は#{t}メートルです。"

#include Math

r = 10

p Math::PI * r * 2
p Math.sqrt(25)