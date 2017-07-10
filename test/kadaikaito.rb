p (1..100).to_a
#以下の書き方もある
ary = []
1.upto(100) do |i|
  ary << i
end
p ary
p '---------------------------------------------------------'
arry = []
ary.each do |i|
  arry << i * 100
end
p arry
#以下の書き方もある
arry = []
arry = ary.collect! { |i|  i * 100 }
p arry
p '---------------------------------------------------------'
str = "I am a Ruby hacker"
#空のハッシュを用意する
h = Hash.new(0)
while char = str.slice!(0)
  #取り出された文字をキーとして加算させる
  h[char] += 1
end
#ソートを行う場合
h.keys().sort!.each do |item|
  puts "'#{item}':#{"☆" * h[item]}"
end
#ソートをしない場合
h.each do |key, value|
  puts "#{key}:#{"☆"*value}"
end
p '---------------------------------------------------------'
#正規表現の練習
str = "I am a Ruby hacker"
/R(.)b(.)/ =~ str
p $1 # => 'u'
p $2 # => 'y'
p '---------------------------------------------------------'
str = "七千百二十三"
kansuji = {"零" => 0,"一" => 1,"二" => 2,"三" => 3,"四" => 4,"五" => 5,"六" => 6,"七" => 7,"八" => 8,"九" => 9}
kurai = {"千" => 1000, "百" => 100, "十" => 10}
sum = 0
kurai.each do |k, v|
  if Regexp.new(k) =~ str
    if Regexp.new("(.)" + k) =~ str
      sum += kansuji[$1] * v
      str.slice!(0,2)
    else
      sum += v
      str.slice!(0)
    end
  end
  break if str.empty? #文字列の長さが０かどうか？
end
sum += kansuji[str]
p sum