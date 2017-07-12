require 'win32ole'
xl = WIN32OLE.new('Excel.Application')    #COMオブジェクトを作成
xl.Visible = true   #可視状態にする
password = ''   #passwordの設定を行う。
mojiTable = ("a".."z").to_a
ary1 = ("A".."Z").to_a
ary2 = ("0".."9").to_a
mojiTable.concat(ary1).concat(ary2)
mojiretu = []
  mojiTable.each do |i|
    mojiretu << i
  end
  mojiTable.each do |i|
    mojiRetu = i
    mojiTable.each do |i|
      mojiretu << mojiRetu + i
    end
  end
  mojiTable.each do |i|
    mojiRetu = i
    mojiTable.each do |i|
      mojiRetu1 = mojiRetu + i
      mojiTable.each do |i|
        mojiretu <<= mojiRetu1 + i
      end
    end
  end
#fnct
#p mojiretu
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
  password = mojiretu[i]
  puts mojiretu[i]
  i += 1
  retry
ensure
  xl.Quit
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
