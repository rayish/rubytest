ary = (1..100).to_a
p ary
array = []
ary.each do |i|
  array << i * 100
end
p array
eiji = ("a".."z").to_a
eijisu = Array.new(26,0)
p eiji
string = "I am a Ruby hacker"
#mojibox = []
while moji = string.slice!(0)
  eiji.each do |count|
    s = Regexp.new(eiji[count])
    if s =~ moji
      eijisu[count] += 1
    end
  end
#  mojibox << moji
end
p eijisu
