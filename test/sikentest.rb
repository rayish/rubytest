input_lines = gets.chomp!.split(" ").map{|e| e.to_i}
s = input_lines[0]
q = input_lines[1]
str = []
for i in (0...s)
    lines = gets.chomp!.split(" ")
    str << lines[0]
    str << lines[1].to_i
end
p str
sizyo = Hash[*str]
p sizyo
kingaku = Array.new(q,0)
for i in (0...q)
    string = Regexp.new(gets.chomp!)
    sizyo.each_key do |mojiretu| 
        if /^#{string}/ =~ mojiretu
            kingaku[i] += sizyo["#{mojiretu}"] 
        end
    end
end
kingaku.each do |i|
    puts kingaku[i]
end