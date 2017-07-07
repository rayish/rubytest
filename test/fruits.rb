fruits = ["ミカン","スイカ","イチゴ","ブドウ"]
fruits.each do |f|
  puts f
end
fruits.each {|f|
  puts f
}
3.times{
  puts "Hello"
}
ary = []
3.times do |i|
  ary << i
end
p ary

ary = []
2.upto(10)  do |i|
  ary << i
end
p ary
puts '---------------------'

ary = []
10.downto(2) do |i|
  ary << i
end
p ary
puts '---------------------'
ary = []
2.step(10,3) do |i|
  ary << i
end
p ary
