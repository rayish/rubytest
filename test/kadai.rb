ary = (1..100).to_a
p ary
p '----------------------------------------------------------------'
array = []
ary.each do |i|
  array << i * 100
end
p array
p '----------------------------------------------------------------'
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
  if eijisu[i] != 0
    print eiji[i], ":", "★" * eijisu[i], "\n"
  end
end
p '----------------------------------------------------------------'
suji = 0
string = "二億六千百十二万七千百二十三"
kansuji = {"零" => 0,"一" => 1,"二" => 2,"三" => 3,"四" => 4,"五" => 5,"六" => 6,"七" => 7,"八" => 8,"九" => 9}
kansuji_zyu = {"十" => 1,"百" => 2,"千" => 3, "万" => 4, "億" => 4, "兆" => 4}
#下からチェックを行う。万以上を考えて。
reverseString = string.reverse
renzoku = false     #位を表す漢字が連続しているかのチェックフラグ
suuti = 0   #実際の答え
zyuzyou = 0 #10の乗算
zyu = 1     #桁数
while moji = reverseString.slice!(0)
  #文字とハッシュの比較(位の漢字の場合)
  if kansuji.has_key?(moji) == false
    if renzoku == false
      renzoku = true
    else
      suuti += zyu
    end
    if zyuzyou < kansuji_zyu["万"]
      zyuzyou = kansuji_zyu[moji]
    elsif zyuzyou < kansuji_zyu["億"] + kansuji_zyu["万"]
      zyuzyou = kansuji_zyu[moji] + kansuji_zyu["万"]
    elsif zyuzyou < kansuji_zyu["兆"] + kansuji_zyu["億"] + kansuji_zyu["万"]
      zyuzyou = kansuji_zyu[moji] + kansuji_zyu["億"] + kansuji_zyu["万"]
    else
      zyuzyou = kansuji_zyu[moji] + kansuji_zyu["兆"] + kansuji_zyu["億"] + kansuji_zyu["万"]
    end
    zyu = 10 ** zyuzyou
  else  #漢数字であれば
    renzoku = false
    suuti += (kansuji[moji] * zyu)
  end
end
p string
p suuti
