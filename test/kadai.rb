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
  print eiji[i], ":", "★" * eijisu[i], "\n"
end
suji = 0
string = "二億六千百五十二万七千百二十三"
kansuji = {"零" => 0,"一" => 1,"二" => 2,"三" => 3,"四" => 4,"五" => 5,"六" => 6,"七" => 7,"八" => 8,"九" => 9}
kansuji_zyu = {"十" => 1,"百" => 2,"千" => 3, "万" => 4, "億" => 8, "兆" => 12}
reverseString = string.reverse
renzoku = false
suuti = 0
zyuzyou = 0
zyu = 1
while moji = reverseString.slice!(0)
  if kansuji.has_key?(moji) == false
    if renzoku == false
      renzoku = true
    else
      suuti += zyu
    end
    print "st", zyuzyou, "\n"
    if zyuzyou < kansuji_zyu["万"]
      zyuzyou = kansuji_zyu[moji]
    elsif zyuzyou < kansuji_zyu["億"]
      zyuzyou = kansuji_zyu[moji] + kansuji_zyu["万"]
    elsif zyuzyou == kansuji_zyu["億"]
      zyuzyou = kansuji_zyu[moji] - kansuji_zyu["万"]
    elsif zyuzyou < kansuji_zyu["兆"]
      zyuzyou = kansuji_zyu[moji] + 8
    else
      zyuzyou = kansuji_zyu[moji] + 12
    end
    p zyuzyou
    zyu = 10 ** zyuzyou
  else
    renzoku = false
    suuti += (kansuji[moji] * zyu)
    p suuti
  end
end