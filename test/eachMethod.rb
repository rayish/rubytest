momotarous = ["だんご","さる","犬","とり","鬼"]
momotarous.each do |wakiyaku|
  puts wakiyaku
end
week = ["Sun","Mon","Tue","Wed","Thu","Fri","Sat"]
week.each_with_index do |day, i|
  print "#{i}_#{day}"
end
puts ""

hash = {:ASIA => "アジア", :EUROPE => "ヨーロッパ", :AFRICA => "アフリカ"}
hash.each do |key,continent|
  puts "#{key}:#{continent}"
end
hash = {ASIA: "アジア", EUROPE: "ヨーロッパ", AFRICA: "アフリカ"}
hash.each do |key|
  puts "#{key}"#:#{continent}"
end
p hash.keys
p hash.values
