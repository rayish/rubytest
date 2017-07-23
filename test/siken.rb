input_lines = gets.chomp.split(" ").map{|e| e.to_i}
a = input_lines[0]
n = input_lines[1]
x = []
for i in (0...a)
  x << gets.chomp!.to_i
end
kumiawase = 0
while !x.empty? do
  kumiawase = kumiawase + x.inject{|sum, i| sum + i } - n +1
  x.shift
end
kumiawase %= 1000000000
puts kumiawase