#課題１
ary = (1..100).to_a
ary2 = []
ary.each do |num|
  next if num % 3 == 0
  ary2 << num
end
#解答
nums = (1..100).to_a
nums2 = nums.reject{|num| num % 3 == 0}

#課題２

moji = "Ruby is an object oriented programming language."
puts moji.upcase
puts moji.downcase
puts moji.swapcase

ary = moji.split()
ary2 = []
ary.each do |str|
  ary2 << str.capitalize
end
puts ary2.join(" ")

ary = moji.split()
for i in 0...ary.size
  ary[i] = ary[i].capitalize
end
puts ary.join(" ")

ary = moji.split()
ary.collect! do |item|
  item.capitalize
end
puts ary.join(" ")