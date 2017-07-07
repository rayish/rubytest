$countries = ["日本", "中国", "韓国"]
def printTitle(t)
  print "***************************************\n"
  puts t
  print "***************************************\n"
end

def printArea(id, *somewhere)
  print id, ". ", $countries[id - 1], "---"
  for i in 0...somewhere.length
    print "、" if i != 0
    print somewhere[i]
  end
  print "\n"
end

printTitle("旅行の行き先を次から選んでください。")
printArea(1, "銀閣寺", "金閣寺", "東京タワー")
printArea(2, "万里の長城", "天安門")
printArea(3, "東大門", "南大門")
a = gets.to_i
print $countries[a-1],"ツアーを受け付けました。"