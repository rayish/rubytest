file = open('ChangeLog')
file.each_line do |line|
  # =~ パターンマッチ
  if /Ruby/ =~ line
    print line
  end
end
file.close
print "\n"
print "-----------------------------------------------------------------------\n"
print "\n"

#Rubyの書き方。↓
file = open('ChangeLog')
file.each_line do |line|
  next unless /Ruby/ =~ line
  print line
end
file.close