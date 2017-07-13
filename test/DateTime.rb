require "time"
#require "date"
t = Time.now
puts t.month  #月
puts t.day    #日
puts t.wday   #曜日
puts t.mday   #月初からの日数
puts t.yday   #年初からの日数

#特定の日時を作成する場合
old_t = Time.mktime(2017, 6, 12, 15, 40, 0)
puts old_t

#unixのシステム標準時
t0 = Time.at(0)
p t0
t0 = Time.at(100000)
p t0

#時間の引き算
puts t - old_t

#表示
puts t.strftime("%A") #曜日
puts t.strftime("%Y") #年
puts t.strftime("%m") #月
puts t.strftime("%d") #日
puts t.strftime("%a") #曜日
puts t.strftime("%Y/%m/%d(%a)")

puts t.strftime("%H:%M:%S %Z")

puts t.utc            #グリニッジ標準時
puts t.strftime("%H:%M")
puts t.localtime      #PCの時間
puts t.strftime("%H:%M")

puts Time.parse("Fri Sep 25 02:45:15 UTC 2015")
puts Time.parse("2015/9/25")
puts Time.parse("H29.9.25")

puts Time.strptime("平成29年7月13日","平成%Y年%m月%d日") do |y|
  y + 1988
end

puts Time.strptime("7/13/2017", "%m/%d/%Y")

#課題1
puts '------------------------------------------------------------'
# 2017年7月13日 -> オブジェクトへ
# 年、月、日を表示
str = "2017年7月13日"
dateobj = Time.strptime(str,"%Y年%m月%d日")
puts dateobj
puts dateobj.year
puts dateobj.month
puts dateobj.day
dateobj = Time.parse("2017/7/13")
puts dateobj
dateObj = Time.mktime(2017, 7, 13)
puts dateObj

#課題2
puts '------------------------------------------------------------'
print "年を入れてください。"
year = gets.to_i
print "月を入れてください。"
month = gets.to_i
dateObj = Date.new(year, month, 1)
getuMatu = Date.new(year, month, -1).strftime("%d").to_i
calendarTable = []
p dateObj.wday
for i in 0...dateObj.wday
  calendarTable << " "
end
p calendarTable
for i in 1..getuMatu
  calendarTable << i
end
puts '------------------------------------------------------------'
print year , "年" , month , "月" , "\n"
print "日 月 火 水 木 金 土\n"
for i in 0...calendarTable.size
  if calendarTable[i].to_i < 10
    print " "
  end
  print calendarTable[i]
  print " "
  print "\n" if (i+1) % 7 == 0
end
print "\n"
#課題2解答
puts '------------------------------------------------------------'
w_days = ["日","月","火","水","木","金","土"]
first_day = Date.new(Time.now.year, Time.now.month, 1)
last_day = Date.new(Time.now.year, Time.now.month+1, 1) - 1

date_ary = (first_day.day..last_day.day).to_a

date_ary.unshift(nil)
first_day.wday.times do
  date_ary.unshift(nil)
end

w_days.each do |wday|
  print wday, " "
end
print "\n"
date_ary.each_with_index do |date, idx|
  next if idx == 0
  if date
    printf("%2d ", date)
  else
    print "   "
  end
  print "\n" if idx % 7 == 0
end