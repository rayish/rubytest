people = ["田中","渡辺","鈴木","吉田"]
print "メンバー："
people.each do |item|
  print item, "さん　"
end
people.each do |item|
  print "\n-----", item, "さん-----\n"
  puts "おみくじを引きますか？　1:引く　　　　2:引かない"
  a = gets.to_i
  case a
  when 1
    num = rand 10
    case num
    when 0
      print "大吉"
    when 1,2
      print "吉"
    when 3,4
      print "中吉"
    when 5,6
      print "小吉"
    when 7,8
      print "末吉"
    else
      print "凶"
    end
    puts "が出ました。"
  when 2
    puts "次の人にまわします。"
    next
  else
    puts "入力間違いです。終了します。"
    break
  end
 end