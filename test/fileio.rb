print "\n"
print "-----------------------------------------------------------------------part1 \n"
print "\n"
file = open('ChangeLog')
file.each_line do |line|
  # =~ パターンマッチ
  if /Ruby/ =~ line
    print line
  end
end
file.close
print "\n"
print "-----------------------------------------------------------------------part2 \n"
print "\n"

#Rubyの書き方。↓
file = open('ChangeLog')
file.each_line do |line|
  next unless /Ruby/ =~ line
  print line
end
file.close
print "\n"
print "-----------------------------------------------------------------------part3 \n"
print "\n"

file = open('ChangeLog')
file.each_line do |line|
  puts line if line.include?("Ruby")#"Ruby"をふくんでいるかどうか
end
file.close
print "\n"
print "-----------------------------------------------------------------------part4 \n"
print "\n"

file = open('ChangeLog')
file.each_line do |line|
  next if !line.include?("Ruby")  #"Ruby"をふくんでいるかどうか
  puts line
end
file.close
print "\n"
print "-----------------------------------------------------------------------part5 \n"
print "\n"
count = 0
cnt = 0
file = open('ChangeLog')
file.each_line do |line|
  next unless /Ruby/ =~ line  #"Ruby"をふくんでいるかどうか
  cnt += 1 if line.scan("Ruby")
  print cnt, ":", line
  cnt = 0
  count += 1
end
file.close
print "出現行数:", count
print "\n"
print "-----------------------------------------------------------------------part6 \n"
print "\n"
file = open('ChangeLog')
count = 0
cnt = 0
file.each_line do |line|
  next unless /Ruby/ =~ line  #"Ruby"をふくんでいるかどうか
  print line.chomp!, " : "
  while line.include?("Ruby")
    line.slice!(0..(line.index("Ruby")+3))
    cnt += 1
  end
  print cnt, "\n"
  cnt = 0
  count += 1
end
file.close
print "出現行数:", count
print "\n"
print "-----------------------------------------------------------------------part7 \n"
print "\n"
file = open('ChangeLog')
count = 0
cnt = 0
file.each_line do |line|
  next unless /Ruby/ =~ line  #"Ruby"をふくんでいるかどうか
  print line.chomp!, " : "
  while /Ruby/ =~ line
    line = $'   # $` より前 $& マッチング $' より後
    cnt += 1
  end
  print cnt, "\n"
  cnt = 0
  count += 1
end
file.close
print "出現行数:", count
print "\n"
print "-----------------------------------------------------------------------part8 \n"
print "\n"
file = open('ChangeLog')
hash = Hash.new(0)
count = 0
cnt = 0
file.each_line do |line|
  next unless /Ruby/ =~ line  #"Ruby"をふくんでいるかどうか
  line.scan(/Ruby/){|cnt| hash[cnt] += 1}
  print line
end
file.close
p hash
print "\n"
print "-----------------------------------------------------------------------part9 \n"
print "\n"
file = open('mail_header.txt')
file.each_line do |line|
  next unless /^From|^To|^Subject/i =~ line #iオプションで大文字小文字の区別をしない
  print file.lineno, " : ",  line # IO#lineno ファイルの行数
end
file.close
print "\n"
print "-----------------------------------------------------------------------part10 \n"
print "\n"
file = open('mail_header.txt')
file.each_line do |line|
  if /^From/i =~ line
    print file.lineno, " : ",  line # IO#lineno ファイルの行数
  elsif /^To/i =~ line
    print file.lineno, " : ",  line # IO#lineno ファイルの行数
  elsif /^Subject/i =~ line
    print file.lineno, " : ",  line # IO#lineno ファイルの行数
  end
end
file.close
print "\n"
print "-----------------------------------------------------------------------part11 \n"
print "\n"
file = open('mail_header.txt')
file.each_line do |line|
  case line
    when /^From/i
      print file.lineno, " : ",  line # IO#lineno ファイルの行数
    when /^To/i
      print file.lineno, " : ",  line # IO#lineno ファイルの行数
    when /^Subject/i
      print file.lineno, " : ",  line # IO#lineno ファイルの行数
  end
end
file.close
print "\n"
print "-----------------------------------------------------------------------part12 \n"
print "\n"
file = open('mail_header.txt')
check = ["^From","^To","^Subject"]
words = []
check.each do |item|
  words << Regexp.new(item, Regexp::IGNORECASE)
end
file.each_line do |line|
  words.each do |reg|
    if reg =~ line
      print file.lineno, " : ",  line # IO#lineno ファイルの行数
    end
  end
end
file.close

#-------------------------------------------->ここからは単なるテスト
str = "joy"
p (str == String)

p (str.is_a?(String))
case str
when String
  puts "String"
when Array
  puts "Array"
end

#参考 http://www.rubylife.jp/regexp/