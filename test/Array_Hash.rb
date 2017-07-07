a = [1, 2, 3, 4]
b = Array.new  #B = []
c = Array.new(3)
d = Array.new(3,1)
p a
p b
p c
p d

hash = {} #hash = Hash.new
a = Hash.new
b = Hash.new("Ruby")

p hash
p a
p b
p b[123]

name = ["田中", "鈴木", "渡辺"]
age = ["20歳", "30歳", "40歳"]
data = Hash.new
data["key"] = "さん："

for i in 0..2
  print name[i], data["key"], age[i], "\n"
end

name.zip(age) do |a, b|
  print a, data["key"], b, "\n"
end

s = "Apple juice"
p s[0]

s << "は美味しい"
p s

while a = s.slice!(0)
  p a
end

p /Ruby/ =~ "I am Ruby hacker"

if /Ruby/ =~ "I am Ruby hacker"
  print "含みます。"
end

input = gets.chomp
r = Regexp.new(input)
if r =~ "I am Ruby hacker"
  print "含みます。"
end