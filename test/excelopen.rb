require 'win32ole'
xl = WIN32OLE.new('Excel.Application')    #COMオブジェクトを作成
# xl.Visible = true   #可視状態にする
xl.Visible = false   #不可視状態にする
password = ''   #passwordの設定を行う。
#mojiTable = ("a".."z").to_a
#ary1 = ("A".."Z").to_a
#ary2 = ("0".."9").to_a
#$mojiTable.concat(ary1).concat(ary2)
mojiTable = [('0'..'9'),('A'..'Z'),('a'..'z')].map{|c| c.to_a}.flatten
$mojiKeta = 4
$mojiIndex = 0
atest = '3'
atest << '1'
puts atest
p atest
#-----------------------------------ここからコメント
  mojiretu = []
#  mojiTable.each do |i|
#    mojiretu << i
#  end
#  mojiTable.each do |i|
#    mojiRetu = i
#    mojiTable.each do |i|
#      mojiretu << mojiRetu + i
#    end
#  end
#  mojiTable.each do |i|
#    mojiRetu = i
#    mojiTable.each do |i|
#      mojiRetu1 = mojiRetu + i
#      mojiTable.each do |i|
#        mojiretu << mojiRetu1 + i
#      end
#    end
#  end
#-----------------------------------ここまでコメント
p mojiretu
exit(0)

#fnct
  i = 0
begin
  #ファイルを開く
  #book = xl.Workbooks.Open("C:/Users/User05/secret.xlsx")
  book = xl.Workbooks.Open({ 'filename' => 'C:/Users/User05/secret.xlsx',
            'password' => password, 'WriteResPassword' => password })
  puts "Open後"
rescue
  puts "rescue‐start"
#  password = 'cs'
#  endFlg, password = makestring(mojiKeta, password)
#  puts mojiretu[i]
#  retry if endFlg 
  password = mojiretu[i]
  i += 1
  retry 
ensure
  xl.Quit
end
def makeString(ketasu, mojiretu)
  return true if ketasu <= 0
   
end
def makeString(ketasu, mojiretu)
  return 0 if ketasu < 0
  mojiTable.each do |moji|
    mojiretu << moji
    mojiretu << makeString(ketasu - 1, mojiretu)
  end
end
#def fnct
#  mojiTable.each do |i|
#    mojiretu << i
#  end
#  mojiTable.each do |i|
#    mojiRetu = i
#    mojiTable.each do |i|
#      mojiretu << mojiRetu + i
#    end
#  end
#  mojiTable.each do |i|
#    mojiRetu = i
#    mojiTable.each do |i|
#      mojiRetu1 = mojiRetu + i
#      mojiTable.each do |i|
#        mojiretu <<= mojiRetu1 + i
#      end
#    end
#  end
#end
#http://bleis-tift.hatenablog.com/entry/20120119/1326944722
