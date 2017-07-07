ary = (1..100).to_a
p ary
array = []
ary.each do |i|
  array << i * 100
end
p array
eiji = ("a".."z").to_a
eijisu = Array.new(26,0)
string = "I am a Ruby hacker"
while moji = string.slice!(0)
  for i in 0...26
    if eiji[i].casecmp(moji) == 0
      eijisu[i] += 1
    end
  end
end
for i in 0...26
  print eiji[i], ":", eijisu[i], "\n"
end
suji = 0
string = "七千百二十三"
kansuji = ["十","百","千","万","億"]
reversestring = string.reverse
while moji = reversestring.slice!(0)
  for i in kansuji.size - 1
    if kansuji[i].casecmp(moji) == 0
      if kansuji[i+1].casecmp(moji) == 0
        suji += 10^(i+1)
      else

      end
    end
  end
end