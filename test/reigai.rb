begin
  file = open("hoge.txt")
  txt = file.read
  print txt
rescue => ex
  sleep 10
  retry
end
p ex

begin
  print "キーボードから100の約数を入力してください。"
  a = gets.to_i
  if 100 % a == 0
      print a, "は100の約数です。\n"
  else
      puts "間違いです。"
  end
rescue => e
#  print "#$!\n"
  puts e.message
  print "例外が発生しました。プログラムを終了します。"
end