puts "英単語を入力してください。"
word1 = gets.chomp
print "この単語は", word1.length, "文字ですね。\n"
puts "同じ文字数の英単語を作ってください。"
word2 = gets.chomp
if word1.length == word2.length
  print "あなたが作った単語は", word2, "ですね。\n"
  print "ひっくり返すと", word2.reverse, "になります。\n"
else
  print "間違いです。"
end

message = "I like apple a lot."
print "対象文字列：", message, "\n"
print "\n文字列の最後に、絵文字を入れます。\n"
a = ["(>.<)", "(-o-)","(^.^)"]
for i in 0...3
  puts message.sub(/$/, a[i])
end
print "\n文字列のすべての空白を*に置き換えます。\n"
puts message.gsub(/\s/, "*")