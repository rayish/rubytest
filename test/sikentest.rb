input_lines = gets.chomp!.split(" ").map{|e| e.to_i}
s = input_lines[0]
q = input_lines[1]
str = Array.new(s)
kin = Array.new(s)
for i in (0...s)
    lines = gets.chomp!.split(" ")
    str[i] = lines[0]
    kin[i] = lines[1].to_i
end
kingaku = Array.new(q,0)
for i in (0...q)
    string = gets.chomp!
    for j in (0...s)
        if /^#{string}/ =~ str[j]
            kingaku[i] += kin[j]
        end
    end
end
kingaku.each do |goukei|
    puts goukei
end
input_lines = gets.chomp!.split(" ").map{|e| e.to_i}
str = {}
for i in (0...input_lines[0])
    lines = gets.chomp!.split(" ")
    if str.has_key?(lines[0])
        str[lines[0]] += lines[1].to_i
    else
        str[lines[0]] = lines[1].to_i
    end
end
for i in (0...input_lines[1])
    kingaku = 0
    string = gets.chomp!
    str.each_key do |key|
        if /^#{string}/ =~ key
            kingaku += str[key]
        end
    end
    puts kingaku
end
input_lines = gets.chomp!.split(" ").map(&:to_i)
str = {}
for i in (0...input_lines[0])
    lines = gets.chomp!.split(" ")
    if str.has_key?(lines[0])
        str[lines[0]] += lines[1].to_i
    else
        str[lines[0]] = lines[1].to_i
    end
end
for i in (0...input_lines[1])
    kingaku = 0
    string = gets.chomp!
    str.each_key do |key|
        if /^#{string}/ =~ key
            kingaku += str[key]
        end
    end
    puts kingaku
end
input_lines = gets.chomp!.split(" ").map(&:to_i)
str = {}
for i in (0...input_lines[0])
    /\s/ =~ gets.chomp!
#    lines =~ /\s/
    a = $`
    b = $'
    if str.has_key?(a)
        str[a] += b.to_i
    else
        str[a] = b.to_i
    end
end
strNew = {}
strNew = Hash[str.sort]
for i in (0...input_lines[1])
    checkFlg = false
    kingaku = 0
    string = gets.chomp!
#    strNew = str.select{|s, k| /^#{string}/ =~ s}
#    strNew.each_key do |key|
#        kingaku += str[key]
#    end
    if strNew.has_key?(string)
        kingaku = strNew[string]
    else
        strNew.each_key do |key|
            if /^#{string}/ =~ key
                kingaku += strNew[key]
                checkFlg = true
            else
                if checkFlg == true
                    break
                end
            end
        end
    end
    puts kingaku
end